

#include "semant.h"

#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <algorithm>
#include <string>
#include <vector>

#include "utilities.h"

extern int semant_debug;
extern char* curr_filename;

// SymbolTable<Symbol, Class_>

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol arg, arg2, Bool, concat, cool_abort, copy, Int, in_int, in_string,
    IO, length, Main, main_meth, No_class, No_type, Object, out_int, out_string,
    prim_slot, self, SELF_TYPE, Str, str_field, substr, type_name, val;

std::string main_str = "Main";
Env* env = new Env();
static ClassTable* classtable;

static bool LOG_FLAG = false;
static std::ostringstream nop_sstream;
static std::ostream& log = LOG_FLAG ? std::cout : nop_sstream;

//
// Initializing the predefined symbols.
//
static void initialize_constants(void) {
    arg = idtable.add_string("arg");
    arg2 = idtable.add_string("arg2");
    Bool = idtable.add_string("Bool");
    concat = idtable.add_string("concat");
    cool_abort = idtable.add_string("abort");
    copy = idtable.add_string("copy");
    Int = idtable.add_string("Int");
    in_int = idtable.add_string("in_int");
    in_string = idtable.add_string("in_string");
    IO = idtable.add_string("IO");
    length = idtable.add_string("length");
    Main = idtable.add_string("Main");
    main_meth = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any
    //   user-defined class.
    No_class = idtable.add_string("_no_class");
    No_type = idtable.add_string("_no_type");
    Object = idtable.add_string("Object");
    out_int = idtable.add_string("out_int");
    out_string = idtable.add_string("out_string");
    prim_slot = idtable.add_string("_prim_slot");
    self = idtable.add_string("self");
    SELF_TYPE = idtable.add_string("SELF_TYPE");
    Str = idtable.add_string("String");
    str_field = idtable.add_string("_str_field");
    substr = idtable.add_string("substr");
    type_name = idtable.add_string("type_name");
    val = idtable.add_string("_val");
}

ClassTable::ClassTable(Classes classes) : semant_errors(0), error_stream(cerr) {
    /* Fill this in */
    install_basic_classes();

    // look up Main class
    check_main(classes);

    // check inherit
    check_inherit(classes);
}

void ClassTable::check_inherit(Classes classes) {
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        Class_ current_class = classes->nth(i);
        Class_ temp = classes->nth(i);
        Symbol parent = current_class->get_parent();

        while (parent != Object && parent != current_class->get_name()) {
            if (parent == Int || parent == Str || parent == SELF_TYPE ||
                parent == Bool) {
                semant_error(current_class)
                    << "Class " << current_class->get_name()
                    << " cannot inherit class " << parent << "." << endl;
                cerr << "Compilation halted due to static semantic errors."
                     << endl;
                exit(1);
                return;
            }
            if (all_classes.find(parent) == all_classes.end()) {
                semant_error(current_class)
                    << "Class " << current_class->get_name()
                    << " inherits from an undefined class " << parent << "."
                    << endl;
                cerr << "Compilation halted due to static semantic errors."
                     << endl;
                exit(0);
            }

            temp = all_classes[parent];
            parent = temp->get_parent();
        }
        if (parent == current_class->get_name()) {
            semant_error(current_class) << "Error! Cycle inheritance!" << endl;
            // cerr << "Compilation halted due to static semantic errors." <<
            // endl; exit(0);
        }
    }
}

void ClassTable::check_main(Classes classes) {
    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        // fetch all classes and check

        // class name cannot be SELF_TYPE
        if (classes->nth(i)->get_name() == SELF_TYPE) {
            semant_error(classes->nth(i))
                << "Error! SELF_TYPE redeclared!" << endl;
        }

        if (all_classes.find(classes->nth(i)->get_name()) !=
            all_classes.end()) {
            if (classes->nth(i)->get_name() == Object) {
                semant_error(classes->nth(i))
                    << "Redefinition of basic class "
                    << classes->nth(i)->get_name() << "." << endl;
                cerr << "Compilation halted due to static semantic errors."
                     << endl;
                exit(1);
            }
            semant_error(classes->nth(i))
                << "Error! Class " << classes->nth(i)->get_name()
                << " has been defined!" << endl;

            return;
        } else {
            all_classes.insert({classes->nth(i)->get_name(), classes->nth(i)});
        }
    }
    if (all_classes.find(Main) == all_classes.end()) {
        semant_error() << "Class Main is not defined." << endl;
    }
}

// if T0 <= T1 in inherit path return true; Attention SELF_TYPE
// note on SELF_TYPE
// (from
// https://github.com/skyzluo/CS143-Compilers-Stanford/blob/HEAD/PA4/semant.cc#L190-L217):
//     When some object o in class C is of SELF_TYPE,
//     it means the real(dynamic) type of o might be C,
//     or any subclass of C, depending on the dynamic type of the containing
//     object. Then, how do we check the inheritance in case of SELF_TYPE?
//
//     1. ancestor = child = SELF_TYPE
//        In this case, we know that the 2 objects have the same dynamic type.
//
//     2. ancestor = A, child = SELF_TYPE
//        In this case, we don't know what the dynamic type of child.
//        So we just assume child is C.
//        If we know that C <= A, then even child's dynamic type isn't C,
//        it can only be a subclass of C. so we are still safe.
//
//        However, this makes the type checker more strict than the real world.
//        Consider this scenario:
//        A < C, and child's dynamic type is A (but the type check can't know
//        this!) then the type checker will complain, even though the program
//        should work.
//
//     3. ancestor = SELF_TYPE, child = A
//        In this case, we have to say that it doesn't type check in any case.
//        Even if A <= C, ancestor's dynamic type could be a subclass of C,
//        which might not be an ancestor of A.
//
//     To sum up, the type checker is more strict than the real world: it might
//     reject some valid programs, but it will not tolerate any invalid program.
//                                          child    ancestor
//                                           ||         ||
bool ClassTable::check_less_or_equal(Symbol T0, Symbol T1) {
    if (T1 == SELF_TYPE) {
        return T0 == SELF_TYPE;
    }
    if (T0 == SELF_TYPE) {
        T0 = env->C->get_name();
    }
    for (; T0 != No_class;
         T0 = classtable->all_classes.find(T0)->second->get_parent()) {
        if (T0 == T1) {
            return true;
        }
    }
    return false;
}

std::list<Symbol> ClassTable::get_inherit_path(Symbol type) {
    std::list<Symbol> path;
    for (; type != No_class; type = all_classes[type]->get_parent()) {
        path.push_front(type);
    }
    return path;
}

// Symbol ClassTable::FindCommonAncestor(Symbol type1, Symbol type2) {

//     std::list<Symbol> path1 = GetInheritancePath(type1);
//     std::list<Symbol> path2 = GetInheritancePath(type2);

//     Symbol ret;
//     std::list<Symbol>::iterator iter1 = path1.begin(),
//                                 iter2 = path2.begin();

//     while (iter1 != path1.end() && iter2 != path2.end()) {
//         if (*iter1 == *iter2) {
//             ret = *iter1;
//         } else {
//             break;
//         }

//         iter1++;
//         iter2++;
//     }

//     return ret;
// }

Symbol ClassTable::get_common_parent(Symbol t0, Symbol t1) {
    // if t0 == SELF_TYPE, t1 = Object
    if (t0 == t1) {
        return t0;
    }
    if (t0 == SELF_TYPE) {
        t0 = env->C->get_name();
    }
    if (t1 == SELF_TYPE) {
        t1 = env->C->get_name();
    }
    std::list<Symbol> path0 = get_inherit_path(t0);
    std::list<Symbol> path1 = get_inherit_path(t1);

    Symbol common_parent = Object;
    std::list<Symbol>::iterator iter0 = path0.begin();
    std::list<Symbol>::iterator iter1 = path1.begin();

    log << path0.size() << endl;
    for (; iter0 != path0.end() && iter1 != path1.end(); ++iter0, ++iter1) {
        if (*iter0 == *iter1) {
            common_parent = *iter0;
        } else {
            break;
        }
    }
    return common_parent;
}

method_class* ClassTable::get_curr_method(Symbol name, std::list<Symbol> path) {
    method_class* curr_method = NULL;
    for (std::list<Symbol>::reverse_iterator iter = path.rbegin();
         iter != path.rend(); ++iter) {
        Symbol curr_class = *iter;
        SymbolTable<Symbol, method_class>* method_table =
            env->M[classtable->all_classes[curr_class]];
        curr_method = method_table->lookup(name);

        if (curr_method != NULL) {
            break;
        }
    }
    // if(curr_method == NULL)
    return curr_method;
}

bool ClassTable::is_basic_type(Symbol type1) {
    return type1 == Int || type1 == Bool || type1 == Str || type1 == IO ||
           type1 == Object;
}

void ClassTable::install_basic_classes() {
    // The tree package uses these globals to annotate the classes built below.
    // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");

    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.

    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    //
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.

    Class_ Object_class = class_(
        Object, No_class,
        append_Features(
            append_Features(single_Features(method(cool_abort, nil_Formals(),
                                                   Object, no_expr())),
                            single_Features(method(type_name, nil_Formals(),
                                                   Str, no_expr()))),
            single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
        filename);
    all_classes.insert({Object, Object_class});

    //
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class = class_(
        IO, Object,
        append_Features(
            append_Features(
                append_Features(
                    single_Features(method(out_string,
                                           single_Formals(formal(arg, Str)),
                                           SELF_TYPE, no_expr())),
                    single_Features(method(out_int,
                                           single_Formals(formal(arg, Int)),
                                           SELF_TYPE, no_expr()))),
                single_Features(
                    method(in_string, nil_Formals(), Str, no_expr()))),
            single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
        filename);
    all_classes.insert({IO, IO_class});
    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer.
    //
    Class_ Int_class =
        class_(Int, Object, single_Features(attr(val, prim_slot, no_expr())),
               filename);
    all_classes.insert({Int, Int_class});
    //
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
        class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),
               filename);
    all_classes.insert({Bool, Bool_class});
    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //
    Class_ Str_class = class_(
        Str, Object,
        append_Features(
            append_Features(
                append_Features(
                    append_Features(
                        single_Features(attr(val, Int, no_expr())),
                        single_Features(attr(str_field, prim_slot, no_expr()))),
                    single_Features(
                        method(length, nil_Formals(), Int, no_expr()))),
                single_Features(method(concat, single_Formals(formal(arg, Str)),
                                       Str, no_expr()))),
            single_Features(
                method(substr,
                       append_Formals(single_Formals(formal(arg, Int)),
                                      single_Formals(formal(arg2, Int))),
                       Str, no_expr()))),
        filename);
    all_classes.insert({Str, Str_class});
}

////////////////////////////////////////////////////////////////////
//
// semant_error is an overloaded function for reporting errors
// during semantic analysis.  There are three versions:
//
//    ostream& ClassTable::semant_error()
//
//    ostream& ClassTable::semant_error(Class_ c)
//       print line number and filename for `c'
//
//    ostream& ClassTable::semant_error(Symbol filename, tree_node *t)
//       print a line number and filename
//
///////////////////////////////////////////////////////////////////

ostream& ClassTable::semant_error(Class_ c) {
    return semant_error(c->get_filename(), c);
}

ostream& ClassTable::semant_error(Symbol filename, tree_node* t) {
    error_stream << filename << ":" << t->get_line_number() << ": ";
    return semant_error();
}

ostream& ClassTable::semant_error() {
    semant_errors++;
    return error_stream;
}

void method_class::add_method_to_table(Class_ class_) {
    // env->M[class_]->addid(
    //     name, new method_class(copy_Symbol(name), formals->copy_list(),
    //                            copy_Symbol(return_type),
    //                            expr->copy_Expression()));
    log << "current add method is " << name << endl;
    env->M[class_]->addid(name, this);
}

void method_class::add_attr_to_table(Class_ class_) {}

void method_class::check_feature_type() {
    // Formals =
    if (!classtable->is_class_exist(return_type) && return_type != SELF_TYPE) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Error! return type " << return_type << " doesn't exist."
            << endl;
    }
    env->O->enterscope();
    bool error = false;
    std::list<Symbol> check_repeat;
    std::list<Symbol>::iterator iter;
    for (int i = formals->first(); formals->more(i); i = formals->next(i)) {
        Formal curr_formal = formals->nth(i);
        Symbol type = curr_formal->get_type();
        Symbol formal_name = curr_formal->get_name();

        if (!classtable->is_class_exist(type)) {
            classtable->semant_error(env->C->get_filename(), this)
                << "Error! Cannot find class " << type << "." << endl;
        }
        if (type == self) {
            classtable->semant_error(env->C->get_filename(), this)
                << "Error! self in formal." << endl;
        }
        if (formal_name == self) {
            classtable->semant_error(env->C->get_filename(), this)
                << "'self' cannot be the name of a formal parameter." << endl;
        }
        if ((iter = std::find(check_repeat.begin(), check_repeat.end(),
                              curr_formal->get_name())) != check_repeat.end()) {
            classtable->semant_error(env->C->get_filename(), this)
                << "Formal parameter " << curr_formal->get_name()
                << " is multiply defined." << endl;
            error = true;
        } else {
            env->O->addid(curr_formal->get_name(), new Symbol(type));
        }
        check_repeat.push_back(curr_formal->get_name());
    }
    if (error) {
        env->O->exitscope();
        return;
    }
    Symbol type = expr->check_expr_type();
    // return_type =  SELF_TYPE , thenm type <SELF_TYPEc
    if (!classtable->check_less_or_equal(type, return_type)) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Error! return type is not ancestor of expr type." << endl;
    }
    env->O->exitscope();
}

bool method_class::check_method_attribute(Expressions actual) {
    Formals curr_formals = get_formals();
    if (actual->len() != curr_formals->len()) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Method " << name << " called with wrong number of arguments."
            << endl;
        return false;
    }
    for (int i = curr_formals->first(), j = actual->first();
         curr_formals->more(i) && actual->more(j);
         i = curr_formals->next(i), j = actual->next(j)) {
        Formal curr_formal = curr_formals->nth(i);
        Expression curr_actual = actual->nth(j);
        Symbol curr_type = curr_actual->check_expr_type();

        if (!classtable->check_less_or_equal(curr_type,
                                             curr_formal->get_type())) {
            classtable->semant_error(env->C->get_filename(), this)
                << "In call of method " << name << ", type " << curr_type
                << " of parameter " << curr_formal->get_name()
                << " does not conform to declared type "
                << curr_formal->get_type() << "." << endl;
            return false;
        }
    }
    return true;
}

void attr_class::add_method_to_table(Class_ class_) {}

void attr_class::add_attr_to_table(Class_ class_) {
    if (env->O->lookup(name) != NULL) {
        classtable->semant_error(class_)
            << "Error! attribute '" << name << "' already exists!" << endl;
    }
    if (name == self) {
        classtable->semant_error(class_)
            << "Error! 'self' cannot be the name of an attribute in class "
            << class_->get_name() << "." << endl;
    }
    env->O->addid(name, &type_decl);
}

void attr_class::check_feature_type() {
    Symbol type = init->check_expr_type();
    if (type == No_type) {
    } else if (classtable->check_less_or_equal(type, type_decl)) {
    } else {
        classtable->semant_error(env->C->get_filename(), this)
            << "Inferred type" << type
            << " of initialization of attribute a "
               "does not conform to declared type "
            << type_decl << "." << endl;
    }
}

Symbol assign_class::check_expr_type() {
    if (name == self) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Cannot assign to 'self'." << endl;
        cerr << "Compilation halted due to static semantic errors." << endl;
        exit(1);
    }
    Symbol expr_type = expr->check_expr_type();
    Symbol* type_p = env->O->lookup(name);
    log << "assign class " << name << ":" << *type_p << "<-" << expr_type
        << endl;
    if (type_p == NULL) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Assignment to undeclared variable " << name << "." << endl;
        set_type(Object);
        return type;
    }
    if (!classtable->check_less_or_equal(expr_type, *type_p)) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Type " << expr_type
            << " of assigned expression does not conform to declared type "
            << *type_p << " of identifier " << name << "." << endl;
        set_type(Object);
        return type;
    }
    set_type(*type_p);
    return type;
}

Symbol static_dispatch_class::check_expr_type() {
    // expr; type_name; name; actual
    log << "static dispatch class " << expr << "@" << name << "()" << endl;
    Symbol expr_type = expr->check_expr_type();
    std::list<Symbol> path;
    if (!classtable->check_less_or_equal(expr_type, type_name)) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Expression type " << expr_type
            << " does not conform to declared static dispatch type "
            << type_name << "." << endl;
    }
    path = classtable->get_inherit_path(type_name);
    method_class* curr_method = classtable->get_curr_method(name, path);

    if (curr_method == NULL) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Static dispatch to undefind method " << name << "." << endl;
        set_type(Object);
        return type;
    }
    if (!curr_method->check_method_attribute(actual)) {
        set_type(Object);
        return type;
    }
    if (curr_method->get_return_type() == SELF_TYPE) {
        set_type(expr_type);
    } else {
        set_type(curr_method->get_return_type());
    }
    return type;
}

Symbol dispatch_class::check_expr_type() {
    //  expr; name; actual;
    Symbol expr_type = expr->check_expr_type();
    log << "dispatch class  " << expr_type << "." << name << "()" << endl;
    std::list<Symbol> path;

    if (expr_type == SELF_TYPE) {
        path = classtable->get_inherit_path(env->C->get_name());
    } else {
        path = classtable->get_inherit_path(expr_type);
    }

    method_class* curr_method = classtable->get_curr_method(name, path);

    if (curr_method == NULL) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Dispatch to undefind method " << name << "." << endl;
        set_type(Object);
        return type;
    }

    // check method's attribute
    if (!curr_method->check_method_attribute(actual)) {
        set_type(Object);
        return type;
    }

    if (curr_method->get_return_type() == SELF_TYPE) {
        set_type(expr_type);
    } else {
        set_type(curr_method->get_return_type());
    }
    log << curr_method->get_name() << "() return type is " << type << endl;
    return type;
}

Symbol cond_class::check_expr_type() {
    // pred; then_exp; else_exp
    log << "cond class if then else fi" << endl;
    Symbol cond_type = pred->check_expr_type();
    log << "cond_type " << cond_type << endl;
    Symbol then_type = then_exp->check_expr_type();
    log << "then_type " << then_type << endl;
    Symbol else_type = else_exp->check_expr_type();
    log << "else_type " << else_type << endl;
    if (cond_type != Bool) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Predicate of 'if' does not have type Bool." << endl;
        set_type(Object);
        return type;
    }
    set_type(classtable->get_common_parent(then_type, else_type));
    log << "cond class if then else fi return " << type << endl << endl;
    return type;
}

Symbol loop_class::check_expr_type() {
    // loop class: pred body
    Symbol pred_type = pred->check_expr_type();
    Symbol body_type = body->check_expr_type();
    if (pred_type != Bool) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Loop condition does not have type Bool." << endl;
    }

    set_type(Object);
    return type;
}

Symbol branch_class::check_branch_type() {
    env->O->enterscope();
    env->O->addid(name, new Symbol(type_decl));
    Symbol type = expr->check_expr_type();
    env->O->exitscope();
    return type;
}

Symbol typcase_class::check_expr_type() {
    // typecase class: expr; cases

    // { case moo of i:Int => i;
    // 		        b:Bool => b;
    // 		        s:String => s;
    // 	     esac;
    // 	}

    Symbol expr_type = expr->check_expr_type();

    Case branch;
    std::vector<Symbol> branch_types;
    std::vector<Symbol> branch_type_decls;

    for (int i = cases->first(); cases->more(i); i = cases->next(i)) {
        branch = cases->nth(i);
        Symbol branch_type = branch->check_branch_type();
        branch_types.push_back(branch_type);
        branch_type_decls.push_back(((branch_class*)branch)->get_type_decl());
    }

    for (int i = 0; i < branch_types.size() - 1; ++i) {
        for (int j = i + 1; j < branch_types.size(); ++j) {
            if (branch_type_decls[i] == branch_type_decls[j]) {
                classtable->semant_error(env->C)
                    << "Error! Two branches have same type." << std::endl;
            }
        }
    }

    type = branch_types[0];
    for (int i = 1; i < branch_types.size(); ++i) {
        type = classtable->get_common_parent(type, branch_types[i]);
    }
    return type;
}

Symbol block_class::check_expr_type() {
    log << "block class {}" << endl;
    Symbol type;
    for (int i = body->first(); body->more(i); i = body->next(i)) {
        type = body->nth(i)->check_expr_type();
    }
    set_type(type);
    log << "block class {} return " << type << endl << endl;
    return type;
}

Symbol let_class::check_expr_type() {
    // identifier; type_decl; init; body
    log << "let class" << endl;
    if (identifier == self) {
        classtable->semant_error(env->C->get_filename(), this)
            << "'self' cannot be bound in a 'let' expression." << endl;
        set_type(Object);
        cerr << "Compilation halted due to static semantic errors." << endl;
        exit(1);
    }

    Symbol init_type = init->check_expr_type();
    if (init_type != No_type &&
        !classtable->check_less_or_equal(init_type, type_decl)) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Inferred type " << type_decl << " of initialization of "
            << identifier << " does not conform to identifier's declared type "
            << init_type << "." << endl;
        set_type(Object);
        return type;
    }
    env->O->enterscope();
    if (init_type == No_type) {
        env->O->addid(identifier, new Symbol(type_decl));
    } else {
        env->O->addid(identifier, new Symbol(classtable->get_common_parent(
                                      init_type, type_decl)));
    }
    log << "z type is  " << *(env->O->lookup(identifier)) << endl;
    Symbol body_type = body->check_expr_type();

    env->O->exitscope();
    set_type(body_type);
    return type;
}

Symbol plus_class::check_expr_type() {
    Symbol type1 = e1->check_expr_type();
    Symbol type2 = e2->check_expr_type();
    if (type1 == Int && type2 == Int) {
        set_type(Int);
    } else {
        classtable->semant_error(env->C->get_filename(), this)
            << "non -Int arguments: " << type1 << " + " << type2 << "." << endl;

        set_type(Object);
    }
    return type;
}

Symbol sub_class::check_expr_type() {
    Symbol type1 = e1->check_expr_type();
    Symbol type2 = e2->check_expr_type();
    if (type1 == Int && type2 == Int) {
        set_type(Int);
    } else {
        classtable->semant_error(env->C->get_filename(), this)
            << "non -Int arguments: " << type1 << " - " << type2 << "." << endl;

        set_type(Object);
    }
    return type;
}

Symbol mul_class::check_expr_type() {
    Symbol type1 = e1->check_expr_type();
    Symbol type2 = e2->check_expr_type();
    if (type1 == Int && type2 == Int) {
        set_type(Int);
    } else {
        classtable->semant_error(env->C->get_filename(), this)
            << "non -Int arguments: " << type1 << " * " << type2 << "." << endl;

        set_type(Object);
    }
    return type;
}

Symbol divide_class::check_expr_type() {
    Symbol type1 = e1->check_expr_type();
    Symbol type2 = e2->check_expr_type();
    if (type1 == Int && type2 == Int) {
        set_type(Int);
    } else {
        classtable->semant_error(env->C->get_filename(), this)
            << "non -Int arguments: " << type1 << " / " << type2 << "." << endl;

        set_type(Object);
    }
    return type;
}

Symbol neg_class::check_expr_type() {
    Symbol type1 = e1->check_expr_type();
    if (type1 == Int) {
        set_type(Int);
    } else {
        classtable->semant_error(env->C->get_filename(), this)
            << "Argument of '~' has type " << type1 << " instead of Int."
            << endl;
        set_type(Object);
    }
    return type;
}

Symbol lt_class::check_expr_type() {
    // <
    log << "lt class" << endl;
    Symbol type1 = e1->check_expr_type();
    Symbol type2 = e2->check_expr_type();
    if (type1 == Int && type2 == Int) {
        set_type(Bool);
    } else {
        classtable->semant_error(env->C->get_filename(), this)
            << "non -Int arguments: " << type1 << " < " << type2 << "." << endl;

        set_type(Object);
    }
    return type;
}

Symbol eq_class::check_expr_type() {
    log << "eq class" << endl;
    //  e1; e2;
    Symbol type1 = e1->check_expr_type();
    Symbol type2 = e2->check_expr_type();
    if (classtable->is_basic_type(type1) && classtable->is_basic_type(type2) &&
        type1 != type2) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Illegal comparison with a basic type." << endl;
        set_type(Object);
        return type;
    }
    set_type(Bool);
    return type;
}

Symbol leq_class::check_expr_type() {
    log << "leq class" << endl;
    //  LE
    Symbol type1 = e1->check_expr_type();
    Symbol type2 = e2->check_expr_type();
    if (type1 == Int && type2 == Int) {
        set_type(Bool);
    } else {
        classtable->semant_error(env->C->get_filename(), this)
            << "non -Int arguments: " << type1 << " <= " << type2 << "."
            << endl;

        set_type(Object);
    }
    return type;
}

Symbol comp_class::check_expr_type() {
    log << "comp class" << endl;
    //  not
    Symbol type_ = e1->check_expr_type();
    if (type_ != Bool) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Argument of 'not' has type Int instead of Bool." << endl;
        set_type(Object);
    }
    set_type(Bool);
    return type;
}

Symbol int_const_class::check_expr_type() {
    set_type(Int);
    return type;
}

Symbol bool_const_class::check_expr_type() {
    set_type(Bool);
    return type;
}

Symbol string_const_class::check_expr_type() {
    set_type(Str);
    return type;
}

Symbol new__class::check_expr_type() {
    log << "new class" << endl;
    //  type_name
    if (type_name == SELF_TYPE) {
        set_type(SELF_TYPE);
    } else {
        set_type(type_name);
    }
    return type;
}

Symbol isvoid_class::check_expr_type() {
    Symbol type = e1->check_expr_type();
    set_type(Bool);
    return type;
}

Symbol no_expr_class::check_expr_type() {
    set_type(No_type);
    return type;
}

Symbol object_class::check_expr_type() {
    Symbol* type_p = env->O->lookup(name);
    if (type_p == NULL) {
        classtable->semant_error(env->C->get_filename(), this)
            << "Undeclared idntifier " << name << "." << endl;
        set_type(Object);
        return type;
    }
    set_type(*type_p);
    return type;
}

/*   This is the entry point to the semantic checker.

     Your checker should do the following two things:

     1) Check that the program is semantically correct
     2) Decorate the abstract syntax tree with type information
        by setting the `type' field in each Expression node.
        (see `tree.h')

     You are free to first do 1), make sure you catch all semantic
     errors. Part 2) can be done in a second stage, when you want
     to build mycoolc.
 */
void program_class::semant() {
    initialize_constants();

    /* ClassTable constructor may do some semantic analysis */
    classtable = new ClassTable(classes);

    /* some semantic analysis code may go here */

    // first pass--construct methodtables
    // Attention: env->M just hold method and  from the class, not its
    // parent, so in second pass we can check ovveriding
    for (std::map<Symbol, Class_>::iterator iter =
             classtable->all_classes.begin();
         iter != classtable->all_classes.end(); iter++) {
        Class_ curr_class = iter->second;
        Features curr_features = curr_class->get_features();
        log << "first pass current class is " << curr_class->get_name() << endl;

        env->M[curr_class] = new SymbolTable<Symbol, method_class>();
        env->M[curr_class]->enterscope();
        for (int i = curr_features->first(); curr_features->more(i);
             i = curr_features->next(i)) {
            Feature curr_feature = curr_features->nth(i);

            // if (curr_feature->is_method()) {
            curr_feature->add_method_to_table(curr_class);
            // }
        }
        log << endl;
    }
    log << endl;
    // second pass -- check overriding
    for (std::map<Symbol, Class_>::iterator iter =
             classtable->all_classes.begin();
         iter != classtable->all_classes.end(); iter++) {
        Class_ curr_class = iter->second;
        Features curr_features = curr_class->get_features();

        for (int i = curr_features->first(); curr_features->more(i);
             i = curr_features->next(i)) {
            Feature curr_feature = curr_features->nth(i);
            Formals curr_formals = curr_feature->get_formals();

            if (curr_feature->is_method()) {
                std::list<Symbol> path =
                    classtable->get_inherit_path(curr_class->get_name());

                for (std::list<Symbol>::reverse_iterator iter = path.rbegin();
                     iter != path.rend(); ++iter) {
                    Symbol curr_parent = *iter;
                    // C <- A <- IO <- Object
                    if (curr_parent == curr_class->get_name()) {
                        continue;
                    }
                    method_class* parent_method =
                        env->M[classtable->all_classes[curr_parent]]->lookup(
                            curr_feature->get_name());

                    if (parent_method != NULL) {
                        // if found parent function , now check overriding

                        Formals parent_formals = parent_method->get_formals();
                        if (parent_formals->len() != curr_formals->len()) {
                            classtable->semant_error(curr_class)
                                << "Incompatible number of formal parameters "
                                   "in redefined method "
                                << curr_feature->get_name() << "." << endl;

                            cerr << "Compilation halted due to static semantic "
                                    "errors."
                                 << endl;
                            exit(1);
                        }
                        for (int i = parent_formals->first(),
                                 j = curr_formals->first();
                             parent_formals->more(i) && curr_formals->more(j);
                             i = parent_formals->next(i),
                                 j = curr_formals->next(j)) {
                            if (parent_formals->nth(i)->get_type() !=
                                curr_formals->nth(j)->get_type()) {
                                classtable->semant_error(
                                    classtable
                                        ->all_classes[curr_class->get_name()])
                                    << "In redefined method "
                                    << curr_feature->get_name()
                                    << ", parameter type "
                                    << curr_formals->nth(j)->get_type()
                                    << " is different from original type "
                                    << parent_formals->nth(i)->get_type()
                                    << endl;
                            }
                        }
                    }
                }
            }
        }
    }

    /*
      get all attribute (field and method)
    */
    // first get attribute from parent
    // for program's classes not all classes

    for (int i = classes->first(); classes->more(i); i = classes->next(i)) {
        Class_ curr_class = classes->nth(i);
        std::list<Symbol> path =
            classtable->get_inherit_path(curr_class->get_name());
        env->C = curr_class;
        log << "now class is " << env->C->get_name() << " features sum is "
            << curr_class->get_features()->len() << endl;

        // add parent's attr to son
        for (std::list<Symbol>::iterator iter = path.begin();
             iter != path.end(); ++iter) {
            env->O->enterscope();
            curr_class = classtable->all_classes[*iter];
            Features curr_features = curr_class->get_features();

            for (int j = curr_features->first(); curr_features->more(j);
                 j = curr_features->next(j)) {
                Feature curr_feature = curr_features->nth(j);
                curr_feature->add_attr_to_table(curr_class);
            }
        }

        curr_class = classes->nth(i);

        env->O->enterscope();
        env->O->addid(self, &SELF_TYPE);
        Features curr_features = curr_class->get_features();
        for (int j = curr_features->first(); curr_features->more(j);
             j = curr_features->next(j)) {
            Feature curr_feature = curr_features->nth(j);
            log << "now feature is " << curr_feature->get_name() << endl;
            curr_feature->check_feature_type();
            log << "end check feature type" << endl;
            log << endl;
        }
        for (int j = 0; j < path.size(); ++j) {
            env->O->exitscope();
        }
        log << endl;
    }

    if (classtable->errors()) {
        cerr << "Compilation halted due to static semantic errors." << endl;
        exit(1);
    }
}
