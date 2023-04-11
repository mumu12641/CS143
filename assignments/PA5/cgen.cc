//**************************************************************************************************************************//
// 1. Determine and emit code for global constants, such as prototype objects.                                               //
// 2. Determine and emit code for global tables, such as the class nameTab, the class objTab, and the dispatch tables.      //
// 3. Determine and emit code for the initialization method of each class.                                                  //
// 4. Determine and emit code for each method definition.                                                                   //
//**************************************************************************************************************************//

//**************************************************************
//
// Code generator SKELETON
//
// Read the comments carefully. Make sure to
//    initialize the base class tags in
//       `CgenClassTable::CgenClassTable'
//
//    Add the label for the dispatch tables to
//       `IntEntry::code_def'
//       `StringEntry::code_def'
//       `BoolConst::code_def'
//
//    Add code to emit everyting else that is needed
//       in `CgenClassTable::code'
//
//
// The files as provided will produce code to begin the code
// segments, declare globals, and emit constants.  You must
// fill in the rest.
//
//**************************************************************

#include "cgen.h"
#include "cgen_gc.h"

#include <algorithm>
#include <memory>
#include <string>
#include <vector>

extern void emit_string_constant(ostream& str, char* s);
extern int cgen_debug;

static bool LOG_FLAG = false;
static std::ostringstream nop_sstream;
static std::ostream& log = LOG_FLAG ? std::cout : nop_sstream;

static Env* env = new Env();
CgenClassTable* codegen_classtable = nullptr;
int label_num = 0;

//
// Three symbols from the semantic analyzer (semant.cc) are used.
// If e : No_type, then no code is generated for e.
// Special code is generated for new SELF_TYPE.
// The name "self" also generates code different from other references.
//
//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
Symbol arg, arg2, Bool, concat, cool_abort, copy, Int, in_int, in_string, IO,
    length, Main, main_meth, No_class, No_type, Object, out_int, out_string,
    prim_slot, self, SELF_TYPE, Str, str_field, substr, type_name, val;
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

static char* gc_init_names[] = {"_NoGC_Init", "_GenGC_Init", "_ScnGC_Init"};
static char* gc_collect_names[] = {"_NoGC_Collect", "_GenGC_Collect",
                                   "_ScnGC_Collect"};

//  BoolConst is a class that implements code generation for operations
//  on the two booleans, which are given global names here.
BoolConst falsebool(FALSE);
BoolConst truebool(TRUE);

//*********************************************************
//
// Define method for code generation
//
// This is the method called by the compiler driver
// `cgtest.cc'. cgen takes an `ostream' to which the assembly will be
// emmitted, and it passes this and the class list of the
// code generator tree to the constructor for `CgenClassTable'.
// That constructor performs all of the work of the code
// generator.
//
//*********************************************************

void program_class::cgen(ostream& os) {
    // spim wants comments to start with '#'
    // os << "# start of generated code\n";

    initialize_constants();
    codegen_classtable = new CgenClassTable(classes, os);
    // std::unique_ptr<CgenClassTable> codegen_classtable(
    //     new CgenClassTable(classes, os));
    codegen_classtable->code();
    // code();
    codegen_classtable->exitscope();
    // os << "\n# end of generated code\n";
}

//////////////////////////////////////////////////////////////////////////////
//
//  emit_* procedures
//
//  emit_X  writes code for operation "X" to the output stream.
//  There is an emit_X for each opcode X, as well as emit_ functions
//  for generating names according to the naming conventions (see emit.h)
//  and calls to support functions defined in the trap handler.
//
//  Register names and addresses are passed as strings.  See `emit.h'
//  for symbolic names you can use to refer to the strings.
//
//////////////////////////////////////////////////////////////////////////////

static void emit_load(char* dest_reg, int offset, char* source_reg,
                      ostream& s) {
    s << LW << dest_reg << " " << offset * WORD_SIZE << "(" << source_reg << ")"
      << endl;
}

static void emit_store(char* source_reg, int offset, char* dest_reg,
                       ostream& s) {
    s << SW << source_reg << " " << offset * WORD_SIZE << "(" << dest_reg << ")"
      << endl;
}

static void emit_load_imm(char* dest_reg, int val, ostream& s) {
    s << LI << dest_reg << " " << val << endl;
}

static void emit_load_address(char* dest_reg, char* address, ostream& s) {
    s << LA << dest_reg << " " << address << endl;
}

static void emit_partial_load_address(char* dest_reg, ostream& s) {
    s << LA << dest_reg << " ";
}

static void emit_load_bool(char* dest, const BoolConst& b, ostream& s) {
    emit_partial_load_address(dest, s);
    b.code_ref(s);
    s << endl;
}

static void emit_load_string(char* dest, StringEntry* str, ostream& s) {
    emit_partial_load_address(dest, s);
    str->code_ref(s);
    s << endl;
}

static void emit_load_int(char* dest, IntEntry* i, ostream& s) {
    emit_partial_load_address(dest, s);
    i->code_ref(s);
    s << endl;
}

static void emit_move(char* dest_reg, char* source_reg, ostream& s) {
    s << MOVE << dest_reg << " " << source_reg << endl;
}

static void emit_neg(char* dest, char* src1, ostream& s) {
    s << NEG << dest << " " << src1 << endl;
}

static void emit_add(char* dest, char* src1, char* src2, ostream& s) {
    s << ADD << dest << " " << src1 << " " << src2 << endl;
}

static void emit_addu(char* dest, char* src1, char* src2, ostream& s) {
    s << ADDU << dest << " " << src1 << " " << src2 << endl;
}

static void emit_addiu(char* dest, char* src1, int imm, ostream& s) {
    s << ADDIU << dest << " " << src1 << " " << imm << endl;
}

static void emit_div(char* dest, char* src1, char* src2, ostream& s) {
    s << DIV << dest << " " << src1 << " " << src2 << endl;
}

static void emit_mul(char* dest, char* src1, char* src2, ostream& s) {
    s << MUL << dest << " " << src1 << " " << src2 << endl;
}

static void emit_sub(char* dest, char* src1, char* src2, ostream& s) {
    s << SUB << dest << " " << src1 << " " << src2 << endl;
}

static void emit_sll(char* dest, char* src1, int num, ostream& s) {
    s << SLL << dest << " " << src1 << " " << num << endl;
}

static void emit_jalr(char* dest, ostream& s) {
    s << JALR << "\t" << dest << endl;
}

static void emit_jal(char* address, ostream& s) {
    s << JAL << address << endl;
}

static void emit_return(ostream& s) {
    s << RET << endl;
}

static void emit_gc_assign(ostream& s) {
    s << JAL << "_GenGC_Assign" << endl;
}

static void emit_disptable_ref(Symbol sym, ostream& s) {
    s << sym << DISPTAB_SUFFIX;
}

static void emit_init_ref(Symbol sym, ostream& s) {
    s << sym << CLASSINIT_SUFFIX;
}

static void emit_label_ref(int l, ostream& s) {
    s << "label" << l;
}

static void emit_protobj_ref(Symbol sym, ostream& s) {
    s << sym << PROTOBJ_SUFFIX;
}

static void emit_method_ref(Symbol classname, Symbol methodname, ostream& s) {
    s << classname << METHOD_SEP << methodname;
}

static void emit_label_def(int l, ostream& s) {
    emit_label_ref(l, s);
    s << ":" << endl;
}

static void emit_beqz(char* source, int label, ostream& s) {
    s << BEQZ << source << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_beq(char* src1, char* src2, int label, ostream& s) {
    s << BEQ << src1 << " " << src2 << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_bne(char* src1, char* src2, int label, ostream& s) {
    s << BNE << src1 << " " << src2 << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_bleq(char* src1, char* src2, int label, ostream& s) {
    s << BLEQ << src1 << " " << src2 << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_blt(char* src1, char* src2, int label, ostream& s) {
    s << BLT << src1 << " " << src2 << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_blti(char* src1, int imm, int label, ostream& s) {
    s << BLT << src1 << " " << imm << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_bgti(char* src1, int imm, int label, ostream& s) {
    s << BGT << src1 << " " << imm << " ";
    emit_label_ref(label, s);
    s << endl;
}

static void emit_branch(int l, ostream& s) {
    s << BRANCH;
    emit_label_ref(l, s);
    s << endl;
}

//
// Push a register on the stack. The stack grows towards smaller addresses.
//
static void emit_push(char* reg, ostream& str) {
    emit_store(reg, 0, SP, str);
    emit_addiu(SP, SP, -4, str);
}

//
// Fetch the integer value in an Int object.
// Emits code to fetch the integer value of the Integer object pointed
// to by register source into the register dest
//
static void emit_fetch_int(char* dest, char* source, ostream& s) {
    emit_load(dest, DEFAULT_OBJFIELDS, source, s);
}

//
// Emits code to store the integer value contained in register source
// into the Integer object pointed to by dest.
//
static void emit_store_int(char* source, char* dest, ostream& s) {
    emit_store(source, DEFAULT_OBJFIELDS, dest, s);
}

static void emit_test_collector(ostream& s) {
    emit_push(ACC, s);
    emit_move(ACC, SP, s);   // stack end
    emit_move(A1, ZERO, s);  // allocate nothing
    s << JAL << gc_collect_names[cgen_Memmgr] << endl;
    emit_addiu(SP, SP, 4, s);
    emit_load(ACC, 0, SP, s);
}

static void emit_gc_check(char* source, ostream& s) {
    if (source != (char*)A1)
        emit_move(A1, source, s);
    s << JAL << "_gc_check" << endl;
}

///////////////////////////////////////////////////////////////////////////////
//
// coding strings, ints, and booleans
//
// Cool has three kinds of constants: strings, ints, and booleans.
// This section defines code generation for each type.
//
// All string constants are listed in the global "stringtable" and have
// type StringEntry.  StringEntry methods are defined both for String
// constant definitions and references.
//
// All integer constants are listed in the global "inttable" and have
// type IntEntry.  IntEntry methods are defined for Int
// constant definitions and references.
//
// Since there are only two Bool values, there is no need for a table.
// The two booleans are represented by instances of the class BoolConst,
// which defines the definition and reference methods for Bools.
//
///////////////////////////////////////////////////////////////////////////////

//
// Strings
//
void StringEntry::code_ref(ostream& s) {
    s << STRCONST_PREFIX << index;
}

//
// Emit code for a constant String.
// You should fill in the code naming the dispatch table.
//

void StringEntry::code_def(ostream& s, int stringclasstag) {
    IntEntryP lensym = inttable.add_int(len);

    // Add -1 eye catcher
    s << WORD << "-1" << endl;

    code_ref(s);
    s << LABEL                           // label
      << WORD << stringclasstag << endl  // tag
      << WORD << (DEFAULT_OBJFIELDS + STRING_SLOTS + (len + 4) / 4)
      << endl  // size
      << WORD;

    /***** Add dispatch information for class String ******/
    s << "String_dispTab";

    s << endl;  // dispatch table
    s << WORD;
    lensym->code_ref(s);
    s << endl;                     // string length
    emit_string_constant(s, str);  // ascii string
    s << ALIGN;                    // align to word
}

//
// StrTable::code_string
// Generate a string object definition for every string constant in the
// stringtable.
//
void StrTable::code_string_table(ostream& s, int stringclasstag) {
    for (List<StringEntry>* l = tbl; l; l = l->tl())
        l->hd()->code_def(s, stringclasstag);
}

//
// Ints
//
void IntEntry::code_ref(ostream& s) {
    s << INTCONST_PREFIX << index;
}

//
// Emit code for a constant Integer.
// You should fill in the code naming the dispatch table.
//

void IntEntry::code_def(ostream& s, int intclasstag) {
    // Add -1 eye catcher
    s << WORD << "-1" << endl;

    code_ref(s);
    s << LABEL                                            // label
      << WORD << intclasstag << endl                      // class tag
      << WORD << (DEFAULT_OBJFIELDS + INT_SLOTS) << endl  // object size
      << WORD;

    /***** Add dispatch information for class Int ******/
    s << "Int" << DISPTAB_SUFFIX << endl;  // dispatch table
    s << WORD << str << endl;              // integer value
}

//
// IntTable::code_string_table
// Generate an Int object definition for every Int constant in the
// inttable.
//
void IntTable::code_string_table(ostream& s, int intclasstag) {
    for (List<IntEntry>* l = tbl; l; l = l->tl())
        l->hd()->code_def(s, intclasstag);
}

//
// Bools
//
BoolConst::BoolConst(int i) : val(i) {
    assert(i == 0 || i == 1);
}

void BoolConst::code_ref(ostream& s) const {
    s << BOOLCONST_PREFIX << val;
}

//
// Emit code for a constant Bool.
// You should fill in the code naming the dispatch table.
//

void BoolConst::code_def(ostream& s, int boolclasstag) {
    // Add -1 eye catcher
    s << WORD << "-1" << endl;

    code_ref(s);
    s << LABEL                                             // label
      << WORD << boolclasstag << endl                      // class tag
      << WORD << (DEFAULT_OBJFIELDS + BOOL_SLOTS) << endl  // object size
      << WORD;

    /***** Add dispatch information for class Bool ******/

    s << "Bool" << DISPTAB_SUFFIX << endl;  // dispatch table
    s << WORD << val << endl;               // value (0 or 1)
}

//////////////////////////////////////////////////////////////////////////////
//
//  CgenClassTable methods
//
//////////////////////////////////////////////////////////////////////////////

//***************************************************
//
//  Emit code to start the .data segment and to
//  declare the global names.
//
//***************************************************

void CgenClassTable::code_global_data() {
    Symbol main = idtable.lookup_string(MAINNAME);
    Symbol string = idtable.lookup_string(STRINGNAME);
    Symbol integer = idtable.lookup_string(INTNAME);
    Symbol boolc = idtable.lookup_string(BOOLNAME);

    str << "\t.data\n" << ALIGN;
    //
    // The following global names must be defined first.
    //
    str << GLOBAL << CLASSNAMETAB << endl;
    str << GLOBAL;
    emit_protobj_ref(main, str);
    str << endl;
    str << GLOBAL;
    emit_protobj_ref(integer, str);
    str << endl;
    str << GLOBAL;
    emit_protobj_ref(string, str);
    str << endl;
    str << GLOBAL;
    falsebool.code_ref(str);
    str << endl;
    str << GLOBAL;
    truebool.code_ref(str);
    str << endl;
    str << GLOBAL << INTTAG << endl;
    str << GLOBAL << BOOLTAG << endl;
    str << GLOBAL << STRINGTAG << endl;

    //
    // We also need to know the tag of the Int, String, and Bool classes
    // during code generation.
    //
    str << INTTAG << LABEL << WORD << intclasstag << endl;
    str << BOOLTAG << LABEL << WORD << boolclasstag << endl;
    str << STRINGTAG << LABEL << WORD << stringclasstag << endl;
}

//***************************************************
//
//  Emit code to start the .text segment and to
//  declare the global names.
//
//***************************************************

void CgenClassTable::code_global_text() {
    str << GLOBAL << HEAP_START << endl
        << HEAP_START << LABEL << WORD << 0 << endl
        << "\t.text" << endl
        << GLOBAL;
    emit_init_ref(idtable.add_string("Main"), str);
    str << endl << GLOBAL;
    emit_init_ref(idtable.add_string("Int"), str);
    str << endl << GLOBAL;
    emit_init_ref(idtable.add_string("String"), str);
    str << endl << GLOBAL;
    emit_init_ref(idtable.add_string("Bool"), str);
    str << endl << GLOBAL;
    emit_method_ref(idtable.add_string("Main"), idtable.add_string("main"),
                    str);
    str << endl;
}

void CgenClassTable::code_bools(int boolclasstag) {
    falsebool.code_def(str, boolclasstag);
    truebool.code_def(str, boolclasstag);
}

void CgenClassTable::code_select_gc() {
    //
    // Generate GC choice constants (pointers to GC functions)
    //
    str << GLOBAL << "_MemMgr_INITIALIZER" << endl;
    str << "_MemMgr_INITIALIZER:" << endl;
    str << WORD << gc_init_names[cgen_Memmgr] << endl;
    str << GLOBAL << "_MemMgr_COLLECTOR" << endl;
    str << "_MemMgr_COLLECTOR:" << endl;
    str << WORD << gc_collect_names[cgen_Memmgr] << endl;
    str << GLOBAL << "_MemMgr_TEST" << endl;
    str << "_MemMgr_TEST:" << endl;
    str << WORD << (cgen_Memmgr_Test == GC_TEST) << endl;
}

//********************************************************
//
// Emit code to reserve space for and initialize all of
// the constants.  Class names should have been added to
// the string table (in the supplied code, is is done
// during the construction of the inheritance graph), and
// code for emitting string constants as a side effect adds
// the string's length to the integer table.  The constants
// are emmitted by running through the stringtable and inttable
// and producing code for each entry.
//
//********************************************************

void CgenClassTable::code_constants() {
    //
    // Add constants that are required by the code generator.
    //
    stringtable.add_string("");
    inttable.add_string("0");

    stringtable.code_string_table(str, stringclasstag);
    inttable.code_string_table(str, intclasstag);
    code_bools(boolclasstag);
}

void CgenClassTable::code_class_name_table() {
    str << CLASSNAMETAB << LABEL;
    for (CgenNodeP class_node : all_classes) {
        StringEntry* e =
            stringtable.lookup_string(class_node->get_name()->get_string());
        str << WORD;
        e->code_ref(str);
        str << endl;
    }
}

void CgenClassTable::code_class_obj_table() {
    str << CLASSOBJTAB << LABEL;
    for (CgenNodeP class_node : all_classes) {
        str << WORD << class_node->get_name() << PROTOBJ_SUFFIX << endl;
        str << WORD << class_node->get_name() << CLASSINIT_SUFFIX << endl;
    }
}
void CgenClassTable::code_dispatch_table() {
    for (CgenNodeP class_node : all_classes) {

        std::vector<CgenNodeP> parents;
        str << class_node->get_name() << DISPTAB_SUFFIX << LABEL;

        CgenNode* curr_parent = class_node;

        do {
            parents.push_back(curr_parent);
            curr_parent = probe(curr_parent->get_parent());
        } while (curr_parent->get_name() != No_class);

        int method_index = 0;
        for (auto i = parents.rbegin(); i != parents.rend(); i++) {
            std::vector<method_class*> curr_methods = (*i)->get_methods();
            for (auto j = curr_methods.begin(); j < curr_methods.end(); j++) {
                str << WORD << (*i)->get_name() << METHOD_SEP << (*j)->name
                    << endl;

                class_node->methods_offset.insert(
                    {(*j)->get_name(), method_index++});
            }
        }
    }
}

void CgenClassTable::code_prot_obj() {
    for (auto i = all_classes.begin(); i != all_classes.end(); i++) {

        CgenNodeP class_node = (*i);
        std::vector<attr_class*> all_attr = class_node->get_attrs();

        env->attrbute_map.insert(
            {class_node->get_name(), new std::vector<Symbol>()});

        str << WORD << "-1" << endl;
        str << class_node->get_name() << PROTOBJ_SUFFIX << LABEL;
        str << WORD << class_tags.find(class_node->get_name())->second << endl;
        str << WORD << DEFAULT_OBJFIELDS + all_attr.size() << endl;  // size
        str << WORD << class_node->get_name() << DISPTAB_SUFFIX << endl;

        // attributes

        for (auto i = all_attr.begin(); i != all_attr.end(); i++) {
            attr_class* curr_attr = *i;
            Symbol type_decl = curr_attr->get_type_decl();

            env->attr_addid(class_node, curr_attr->get_name());

            if (type_decl == Int) {
                IntEntry* e = inttable.lookup_string("0");
                str << WORD;
                e->code_ref(str);
                str << endl;
            } else if (type_decl == Str) {
                StringEntry* e = stringtable.lookup_string("");
                str << WORD;
                e->code_ref(str);
                str << endl;
            } else if (type_decl == Bool) {
                str << WORD;
                falsebool.code_ref(str);
                str << endl;
            } else {
                str << WORD << "0" << endl;
            }
        }
    }
}

void CgenClassTable::code_init_method() {
    for (CgenNodeP class_node : all_classes) {
        class_node->code_init(str);
    }
}

int CgenClassTable::get_let_var_num(method_class* method_) {
    Expression curr_exp = method_->get_expr();
    return curr_exp->get_let_var_num();
}

void CgenClassTable::code_class_method() {
    for (auto class_node : all_classes) {
        if (!class_node->basic()) {
            env->so = class_node;

            std::vector<method_class*> all_methods = class_node->get_methods();
            for (method_class* method_ : all_methods) {
                // for every method
                env->param_table.clear();
                emit_method_ref(class_node->get_name(), method_->get_name(),
                                str);
                str << LABEL;
                int let_var_num = get_let_var_num(method_);
                env->let_var_num = let_var_num;
                str << COMMENT << get_let_var_num(method_) << endl;
                int fp_offset = 12 + 4 * let_var_num;

                emit_addiu(SP, SP, -fp_offset, str);
                emit_store(FP, (fp_offset) / WORD_SIZE, SP, str);
                emit_store(SELF, (fp_offset - 4) / WORD_SIZE, SP, str);
                emit_store(RA, (fp_offset - 8) / WORD_SIZE, SP, str);
                emit_addiu(FP, SP, 4, str);
                emit_move(SELF, ACC, str);
                for (int i = method_->formals->first();
                     method_->formals->more(i); i = method_->formals->next(i)) {
                    env->param_addid(method_->formals->nth(i)->get_name());
                }
                Expression exprs = method_->get_expr();
                exprs->code(str);

                // env->let_var_num = 0;
                env->var_table.clear();
                emit_load(FP, fp_offset / WORD_SIZE, SP, str);
                emit_load(SELF, fp_offset / WORD_SIZE - 1, SP, str);
                emit_load(RA, fp_offset / WORD_SIZE - 2, SP, str);

                emit_addiu(SP, SP,
                           12 + 4 * (let_var_num + method_->formals->len()),
                           str);
                emit_return(str);
            }
        }
    }
}

CgenClassTable::CgenClassTable(Classes classes, ostream& s)
    : nds(NULL), str(s) {
    stringclasstag = 4 /* Change to your String class tag here */;
    intclasstag = 2 /* Change to your Int class tag here */;
    boolclasstag = 3 /* Change to your Bool class tag here */;

    enterscope();
    if (cgen_debug)
        log << "Building CgenClassTable" << endl;

    // install basic classes and classes from program, add to current scope
    install_basic_classes();
    install_classes(classes);

    all_classes.clear();
    for (List<CgenNode>* l = nds; l; l = l->tl()) {
        all_classes.push_back(l->hd());
    }
    std::reverse(all_classes.begin(), all_classes.end());
    for (int i = 0; i < all_classes.size(); i++) {
        class_tags.insert({all_classes[i]->get_name(), i});
    }

    // build inheritance tree, CgenNode's parent and
    build_inheritance_tree();

    // code();
    // exitscope();
}

void CgenClassTable::install_basic_classes() {
    // The tree package uses these globals to annotate the classes built below.
    // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");

    //
    // A few special class names are installed in the lookup table but not
    // the class list.  Thus, these classes exist, but are not part of the
    // inheritance hierarchy.
    // No_class serves as the parent of Object and the other special classes.
    // SELF_TYPE is the self class; it cannot be redefined or inherited.
    // prim_slot is a class known to the code generator.
    //
    addid(No_class,
          new CgenNode(class_(No_class, No_class, nil_Features(), filename),
                       Basic, this));
    addid(SELF_TYPE,
          new CgenNode(class_(SELF_TYPE, No_class, nil_Features(), filename),
                       Basic, this));
    addid(prim_slot,
          new CgenNode(class_(prim_slot, No_class, nil_Features(), filename),
                       Basic, this));

    //
    // The Object class has no parent class. Its methods are
    //        cool_abort() : Object    aborts the program
    //        type_name() : Str        returns a string representation of class
    //        name copy() : SELF_TYPE       returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.
    //
    install_class(new CgenNode(
        class_(Object, No_class,
               append_Features(
                   append_Features(
                       single_Features(method(cool_abort, nil_Formals(), Object,
                                              no_expr())),
                       single_Features(
                           method(type_name, nil_Formals(), Str, no_expr()))),
                   single_Features(
                       method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
               filename),
        Basic, this));

    //
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE          writes a string to the output
    //        out_int(Int) : SELF_TYPE               "    an int    "  "     "
    //        in_string() : Str                    reads a string from the input
    //        in_int() : Int                         "   an int     "  "     "
    //
    install_class(new CgenNode(
        class_(
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
            filename),
        Basic, this));

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer.
    //
    install_class(new CgenNode(
        class_(Int, Object, single_Features(attr(val, prim_slot, no_expr())),
               filename),
        Basic, this));

    //
    // Bool also has only the "val" slot.
    //
    install_class(new CgenNode(
        class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),
               filename),
        Basic, this));

    //
    // The class Str has a number of slots and operations:
    //       val                                  ???
    //       str_field                            the string itself
    //       length() : Int                       length of the string
    //       concat(arg: Str) : Str               string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring
    //
    install_class(new CgenNode(
        class_(Str, Object,
               append_Features(
                   append_Features(
                       append_Features(
                           append_Features(
                               single_Features(attr(val, Int, no_expr())),
                               single_Features(
                                   attr(str_field, prim_slot, no_expr()))),
                           single_Features(
                               method(length, nil_Formals(), Int, no_expr()))),
                       single_Features(method(concat,
                                              single_Formals(formal(arg, Str)),
                                              Str, no_expr()))),
                   single_Features(
                       method(substr,
                              append_Formals(single_Formals(formal(arg, Int)),
                                             single_Formals(formal(arg2, Int))),
                              Str, no_expr()))),
               filename),
        Basic, this));
}

// CgenClassTable::install_class
// CgenClassTable::install_classes
//
// install_classes enters a list of classes in the symbol table.
//
void CgenClassTable::install_class(CgenNodeP nd) {
    Symbol name = nd->get_name();

    if (probe(name)) {
        return;
    }

    // The class name is legal, so add it to the list of classes
    // and the symbol table.
    nds = new List<CgenNode>(nd, nds);
    addid(name, nd);
}

void CgenClassTable::install_classes(Classes cs) {
    for (int i = cs->first(); cs->more(i); i = cs->next(i))
        install_class(new CgenNode(cs->nth(i), NotBasic, this));
}

//
// CgenClassTable::build_inheritance_tree
//
void CgenClassTable::build_inheritance_tree() {
    for (List<CgenNode>* l = nds; l; l = l->tl())
        set_relations(l->hd());
}

//
// CgenClassTable::set_relations
//
// Takes a CgenNode and locates its, and its parent's, inheritance nodes
// via the class table.  Parent and child pointers are added as appropriate.
//
void CgenClassTable::set_relations(CgenNodeP nd) {
    CgenNode* parent_node = probe(nd->get_parent());
    nd->set_parentnd(parent_node);
    parent_node->add_child(nd);
}

CgenNodeP CgenClassTable::get_class_node(Symbol class_name) {
    for (List<CgenNode>* l = nds; l; l = l->tl()) {
        if (l->hd()->get_name() == class_name) {
            return l->hd();
        }
    }
    return NULL;
}

void CgenNode::add_child(CgenNodeP n) {
    children = new List<CgenNode>(n, children);
}

void CgenNode::set_parentnd(CgenNodeP p) {
    assert(parentnd == NULL);
    assert(p != NULL);
    parentnd = p;
}

std::vector<method_class*> CgenNode::get_methods() {
    std::vector<method_class*> m_methods;
    for (int i = features->first(); features->more(i); i = features->next(i)) {
        if (features->nth(i)->is_method()) {
            m_methods.push_back((method_class*)features->nth(i));
        }
    }
    return m_methods;
}

std::vector<attr_class*> CgenNode::get_attrs() {
    Features curr_attrs = features;
    std::vector<attr_class*> all_attr;

    for (int i = curr_attrs->first(); curr_attrs->more(i);
         i = curr_attrs->next(i)) {

        Feature curr_attr = curr_attrs->nth(i);
        if (!curr_attr->is_method()) {
            all_attr.push_back((attr_class*)curr_attr);
        }
    }
    return all_attr;
}

std::map<Symbol, int> CgenNode::get_attrs_offset() {
    // features
    Features curr_attrs = features;
    std::map<Symbol, int> offset;
    for (int i = curr_attrs->first(); curr_attrs->more(i);
         i = curr_attrs->next(i)) {

        Feature curr_attr = curr_attrs->nth(i);
        if (!curr_attr->is_method()) {
            offset.insert({curr_attr->get_name(), i + 3});
        }
    }
    return offset;
}

void CgenNode::code_init(ostream& str) {
    emit_init_ref(name, str);
    str << LABEL;

    // assembly code
    // str << "# push fp s0 ra" << endl;
    emit_addiu(SP, SP, -12, str);
    emit_store(FP, 3, SP, str);
    emit_store(SELF, 2, SP, str);
    emit_store(RA, 1, SP, str);

    // str << "# new frame point" << endl;
    emit_addiu(FP, SP, 4, str);

    // before Main_init; $a0 <- Main_protObj
    emit_move(SELF, ACC, str);

    // jal to parent's init method
    if (parentnd->get_name() != No_class) {
        str << JAL;
        emit_init_ref(parentnd->get_name(), str);
        str << endl;
    }

    // init attribute
    std::vector<attr_class*> attrs = get_attrs();

    for (auto i = attrs.begin(); i != attrs.end(); i++) {
        int index = i - attrs.begin();
        if (!(*i)->get_expr()->is_empty()) {
            // is not empty
            (*i)->get_expr()->code(str);
            // offset
            emit_store(ACC, (index * 4 + 12) / WORD_SIZE, SELF, str);
        } else {
            // We still need to deal with basic types.
            if ((*i)->get_type_decl() == Str) {
                emit_load_string(ACC, stringtable.lookup_string(""), str);
                emit_store(ACC, (index * 4 + 12) / WORD_SIZE, SELF, str);
            } else if ((*i)->get_type_decl() == Int) {
                emit_load_int(ACC, inttable.lookup_string("0"), str);
                emit_store(ACC, (index * 4 + 12) / WORD_SIZE, SELF, str);
            } else if ((*i)->get_type_decl() == Bool) {
                emit_load_bool(ACC, BoolConst(0), str);
                emit_store(ACC, (index * 4 + 12) / WORD_SIZE, SELF, str);
            } else {
                emit_move(ACC, ZERO, str);
                emit_store(ACC, (index * 4 + 12) / WORD_SIZE, SELF, str);
            }
        }
    }

    // restore self
    emit_move(ACC, SELF, str);
    emit_load(FP, 3, SP, str);
    emit_load(SELF, 2, SP, str);
    emit_load(RA, 1, SP, str);
    emit_addiu(SP, SP, 12, str);
    emit_return(str);
}

void CgenClassTable::code() {
    if (cgen_Memmgr == 1) {
        log << "gc" << endl;
    }
    if (cgen_debug)
        log << "coding global data" << endl;
    code_global_data();

    if (cgen_debug)
        log << "choosing gc" << endl;
    code_select_gc();

    if (cgen_debug)
        log << "coding constants" << endl;
    code_constants();

    //                 Add your code to emit
    //                   - prototype objects
    //                   - class_nameTab
    //                   - dispatch tables
    //

    // class_name table
    code_class_name_table();

    // class obj table
    code_class_obj_table();

    // dispatch table
    code_dispatch_table();

    // prot_obj
    code_prot_obj();

    if (cgen_debug)
        log << "coding global text" << endl;
    code_global_text();

    //                 Add your code to emit
    //                   - object initializer
    //                   - the class methods
    //                   - etc...

    // init method
    // emit_init_ref()
    code_init_method();

    // class methods
    code_class_method();
}

CgenNodeP CgenClassTable::root() {
    return probe(Object);
}

///////////////////////////////////////////////////////////////////////
//
// CgenNode methods
//
///////////////////////////////////////////////////////////////////////

CgenNode::CgenNode(Class_ nd, Basicness bstatus, CgenClassTableP ct)
    : class__class((const class__class&)*nd),
      parentnd(NULL),
      children(NULL),
      basic_status(bstatus) {
    stringtable.add_string(
        name->get_string());  // Add class name to string table
    std::unique_ptr<std::map<Symbol, int>> methods_offset(
        new std::map<Symbol, int>());
}

//******************************************************************
//
//   Fill in the following methods to produce code for the
//   appropriate expression.  You may add or remove parameters
//   as you wish, but if you do, remember to change the parameters
//   of the declarations in `cool-tree.h'  Sample code for
//   constant integers, strings, and booleans are provided.
//
//*****************************************************************

void assign_class::code(ostream& s) {
    s << COMMENT << "assign_class start" << endl;
    s << COMMENT << "eval expr" << endl;
    // name expr
    // expr result -> $a0
    expr->code(s);

    s << COMMENT << "store to object" << endl;
    if (env->find_var(name) != -1) {
        // is a param
        // emit_store(ACC, -env->find_var(name) - 1, FP, s);
        emit_store(ACC, env->find_var(name), FP, s);
    }
    if (env->find_param(name) != -1) {
        // is a param
        emit_store(ACC, env->find_param(name) + 3, FP, s);
    }
    if (env->find_attr(name) != -1) {
        // is a attribute
        emit_store(ACC, env->find_attr(name) + 3, SELF, s);
    }

    s << COMMENT << "assign_class end" << endl;
    s << endl;
}

void static_dispatch_class::code(ostream& s) {
    // @type_name
    s << COMMENT << "disspatch start" << endl;
    for (int i = actual->first(); actual->more(i); i = actual->next(i)) {
        actual->nth(i)->code(s);
        emit_push(ACC, s);
    }
    // expr -> $a0

    if (expr->is_empty()) {
        // self
        // emit_load(ACC, )
        emit_move(ACC, SELF, s);
    } else {
        expr->code(s);
    }

    // if obj = =void then jmp to abort()
    emit_bne(ACC, ZERO, label_num, s);
    emit_load_address(ACC, "str_const0", s);
    emit_load_imm(T1, 1, s);
    emit_jal("_dispatch_abort", s);
    emit_label_ref(label_num, s);
    label_num++;
    s << ":" << endl;

    // else lable0:
    CgenNodeP class_node = codegen_classtable->get_class_node(type_name);

    // t1 = self.dispTab
    emit_load(T1, 2, ACC, s);

    // int index = class_node->methods_offset.find(name)->second();
    int index = class_node->methods_offset.find(name)->second;
    emit_load(T1, index, T1, s);

    emit_jal(T1, s);
    s << COMMENT << "dispatch end" << endl;
}

void dispatch_class::code(ostream& s) {
    // expr name actual
    s << COMMENT << "dispatch_class start" << endl;
    s << COMMENT << "push actual" << endl;
    for (int i = actual->first(); actual->more(i); i = actual->next(i)) {
        actual->nth(i)->code(s);

        emit_push(ACC, s);
    }

    // expr -> $a0
    s << COMMENT << "eval expr of expr.name" << endl;
    if (expr->is_empty()) {
        // self
        // emit_load(ACC, )
        emit_move(ACC, SELF, s);
    } else {
        expr->code(s);
    }
    // if obj = =void then jmp to abort()
    s << COMMENT << "if obj = void jmp abort()" << endl;
    emit_bne(ACC, ZERO, label_num, s);
    emit_load_address(ACC, "str_const0", s);
    emit_load_imm(T1, 1, s);
    emit_jal("_dispatch_abort", s);
    emit_label_ref(label_num, s);
    label_num++;
    s << ":" << endl;

    // else lable0:
    s << COMMENT << "else load disp and jump" << endl;
    Symbol curr_class_name = expr->get_type();
    if (curr_class_name == SELF_TYPE) {
        curr_class_name = env->so->get_name();
    }
    CgenNodeP class_node = codegen_classtable->get_class_node(curr_class_name);

    // t1 = self.dispTab
    emit_load(T1, 2, ACC, s);

    // int index = class_node->methods_offset.find(name)->second();
    int index = class_node->methods_offset.find(name)->second;
    emit_load(T1, index, T1, s);

    emit_jal(T1, s);
    s << COMMENT << "dispatch_class end" << endl;
    s << endl;
}

void cond_class::code(ostream& s) {
    // pred then_expr else_expr
    s << COMMENT << "cond_class start" << endl;
    s << COMMENT << "eval pred" << endl;
    pred->code(s);

    // T1 <- a0
    emit_load(T1, 3, ACC, s);

    int labelnum_false = label_num++;
    int labelnum_finish = label_num++;

    emit_beqz(T1, labelnum_false, s);

    s << COMMENT << "eval then_exp" << endl;
    then_exp->code(s);

    emit_branch(labelnum_finish, s);
    emit_label_def(labelnum_false, s);
    s << COMMENT << "eval else_exp" << endl;
    else_exp->code(s);
    emit_label_def(labelnum_finish, s);
    s << COMMENT << "cond_class end" << endl;
    s << endl;
}

void loop_class::code(ostream& s) {
    // pred body
    s << COMMENT << "lopp_class start" << endl;
    int label_loop = label_num++;
    int lable_finish = label_num++;

    emit_label_def(label_loop, s);
    s << COMMENT << "eval loop pred" << endl;
    pred->code(s);

    emit_load(T1, 3, ACC, s);
    emit_beqz(T1, lable_finish, s);
    s << COMMENT << "eval loop body" << endl;
    body->code(s);
    emit_branch(label_loop, s);

    emit_label_def(lable_finish, s);
    emit_move(ACC, ZERO, s);
    s << COMMENT << "loop_class end" << endl << endl;
}

void typcase_class::code(ostream& s) {}

void block_class::code(ostream& s) {
    for (int i = body->first(); body->more(i); i = body->next(i)) {
        body->nth(i)->code(s);
    }
}

void let_class::code(ostream& s) {
    // Symbol identifier;
    // Symbol type_decl;
    // Expression init;
    // Expression body;
    s << COMMENT << "let class start" << endl;
    s << COMMENT << "eval let init" << endl;
    init->code(s);
    if (init->is_empty()) {
        // We still need to deal with basic types.
        if (type_decl == Str) {
            emit_load_string(ACC, stringtable.lookup_string(""), s);
        } else if (type_decl == Int) {
            emit_load_int(ACC, inttable.lookup_string("0"), s);
        } else if (type_decl == Bool) {
            emit_load_bool(ACC, BoolConst(0), s);
        }
    }

    // emit_push(ACC, s);
    env->var_addid(identifier);
    emit_store(ACC, env->find_var(identifier), FP, s);

    s << COMMENT << "eval let body" << endl;
    body->code(s);
    env->var_table.pop_back();
    // env->let_var_num = 0;

    s << COMMENT << "let class end " << endl << endl;
}

void plus_class::code(ostream& s) {
    log << "plus class" << endl;

    // eval e1 and push
    e1->code(s);
    emit_push(ACC, s);

    // eval e2
    e2->code(s);
    emit_jal("Object.copy", s);

    // pop to temp
    emit_load(T2, 1, SP, s);
    emit_load(T1, 3, ACC, s);
    emit_load(T2, 3, T2, s);

    // eval e1+e2
    emit_add(T1, T1, T2, s);
    // ACC contain the result;
    emit_store(T1, 3, ACC, s);

    emit_addiu(SP, SP, 4, s);
}

void sub_class::code(ostream& s) {
    e1->code(s);
    emit_push(ACC, s);

    e2->code(s);
    emit_jal("Object.copy", s);

    emit_load(T2, 1, SP, s);
    emit_load(T1, 3, ACC, s);
    emit_load(T2, 3, T2, s);

    emit_sub(T1, T2, T1, s);

    emit_store(T1, 3, ACC, s);

    emit_addiu(SP, SP, 4, s);
}

void mul_class::code(ostream& s) {
    e1->code(s);
    emit_push(ACC, s);

    e2->code(s);
    emit_jal("Object.copy", s);

    emit_load(T2, 1, SP, s);
    emit_load(T1, 3, ACC, s);
    emit_load(T2, 3, T2, s);

    emit_mul(T1, T1, T2, s);

    emit_store(T1, 3, ACC, s);

    emit_addiu(SP, SP, 4, s);
}

void divide_class::code(ostream& s) {
    e1->code(s);
    emit_push(ACC, s);

    e2->code(s);
    emit_jal("Object.copy", s);

    emit_load(T2, 1, SP, s);
    emit_load(T1, 3, ACC, s);
    emit_load(T2, 3, T2, s);

    emit_div(T1, T2, T1, s);

    emit_store(T1, 3, ACC, s);

    emit_addiu(SP, SP, 4, s);
}

void neg_class::code(ostream& s) {
    e1->code(s);
    emit_jal("Object.copy", s);
    emit_load(T1, 3, ACC, s);
    emit_neg(T1, T1, s);
    emit_store(T1, 3, ACC, s);
}

void lt_class::code(ostream& s) {
    // e1 < e2
    e1->code(s);
    emit_push(ACC, s);

    e2->code(s);

    // T1 <- e1
    // T2 <- e2
    emit_load(T1, 1, SP, s);
    emit_load(T2, 3, ACC, s);
    emit_load(T1, 3, T1, s);
    // sp
    emit_addiu(SP, SP, 4, s);

    // a0 <- true
    emit_load_bool(ACC, BoolConst(1), s);

    emit_blt(T1, T2, label_num, s);

    // a0 <- false
    emit_load_bool(ACC, BoolConst(0), s);

    emit_label_ref(label_num, s);
    label_num++;
    s << ":" << endl;
}

void eq_class::code(ostream& s) {
    // e1 e2
    e1->code(s);
    emit_push(ACC, s);

    e2->code(s);
    // T1 <- e1
    // T2 <- e2
    emit_load(T1, 1, SP, s);
    emit_move(T2, ACC, s);
    emit_addiu(SP, SP, 4, s);

    emit_load_bool(ACC, BoolConst(1), s);
    emit_beq(T1, T2, label_num, s);
    emit_load_bool(A1, BoolConst(0), s);
    emit_jal("equality_test", s);

    emit_label_ref(label_num, s);
    label_num++;
    s << ":" << endl;
}

void leq_class::code(ostream& s) {
    // e1 e2
    e1->code(s);
    emit_push(ACC, s);

    e2->code(s);
    // T1 <- e1
    // T2 <- e2
    emit_load(T1, 1, SP, s);
    emit_move(T2, ACC, s);
    emit_addiu(SP, SP, 4, s);

    emit_load_bool(ACC, BoolConst(1), s);
    emit_bleq(T1, T2, label_num, s);
    emit_load_bool(ACC, BoolConst(0), s);

    emit_label_ref(label_num, s);
    label_num++;
    s << ":" << endl;
}

void comp_class::code(ostream& s) {
    // not bool
    e1->code(s);

    emit_load(T1, 3, ACC, s);

    emit_load_bool(ACC, BoolConst(1), s);
    emit_beqz(T1, label_num, s);
    emit_load_bool(ACC, BoolConst(0), s);

    emit_label_ref(label_num, s);
    label_num++;
    s << ":" << endl;
}

void int_const_class::code(ostream& s) {
    //
    // Need to be sure we have an IntEntry *, not an arbitrary Symbol
    //
    emit_load_int(ACC, inttable.lookup_string(token->get_string()), s);
}

void string_const_class::code(ostream& s) {
    emit_load_string(ACC, stringtable.lookup_string(token->get_string()), s);
}

void bool_const_class::code(ostream& s) {
    emit_load_bool(ACC, BoolConst(val), s);
}

void new__class::code(ostream& s) {
    // type_name
    s << COMMENT << "new_class start" << endl;
    std::string dest = type_name->get_string();
    dest += PROTOBJ_SUFFIX;
    char* desr_str = new char[dest.length() + 1];
    strcpy(desr_str, dest.c_str());
    emit_load_address(ACC, desr_str, s);
    emit_jal("Object.copy", s);

    dest = type_name->get_string();
    dest += CLASSINIT_SUFFIX;
    desr_str = new char[dest.length() + 1];
    strcpy(desr_str, dest.c_str());
    emit_jal(desr_str, s);
    s << COMMENT << "new_class end" << endl << endl;
}

void isvoid_class::code(ostream& s) {

    e1->code(s);
    emit_move(T1, ACC, s);

    emit_load_bool(ACC, BoolConst(1), s);

    emit_beqz(T1, label_num, s);

    emit_load_bool(ACC, BoolConst(0), s);

    emit_label_def(label_num, s);

    ++label_num;
}

void no_expr_class::code(ostream& s) {
    s << COMMENT << "no expr at " << get_line_number() << endl;
    emit_move(ACC, ZERO, s);
}

void object_class::code(ostream& s) {
    s << COMMENT << "object " << name << endl;

    // find object
    if (env->find_var(name) != -1) {
        // is a param
        // emit_load(ACC, -env->find_var(name) - 1, FP, s);
        emit_load(ACC, env->find_var(name), FP, s);
        return;
    }

    if (env->find_param(name) != -1) {
        // is a param
        emit_load(ACC, env->find_param(name) + 3 + env->let_var_num, FP, s);
        return;
    }
    if (env->find_attr(name) != -1) {
        // is a attribute
        emit_load(ACC, env->find_attr(name) + 3, SELF, s);
        return;
    }

    if (name == self) {
        emit_move(ACC, SELF, s);
    }
}
