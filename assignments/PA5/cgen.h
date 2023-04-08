#include <assert.h>
#include <stdio.h>
#include <map>
#include <memory>
#include <vector>
#include "cool-tree.h"
#include "emit.h"
#include "symtab.h"

enum Basicness { Basic, NotBasic };
#define TRUE 1
#define FALSE 0

class CgenClassTable;
typedef CgenClassTable* CgenClassTableP;

class CgenNode;
typedef CgenNode* CgenNodeP;

class CgenClassTable : public SymbolTable<Symbol, CgenNode> {
   private:
    List<CgenNode>* nds;
    ostream& str;
    int stringclasstag;
    int intclasstag;
    int boolclasstag;

    std::vector<CgenNodeP> all_classes;

    // The following methods emit code for
    // constants and global declarations.

    void code_global_data();
    void code_global_text();
    void code_bools(int);
    void code_select_gc();
    void code_constants();

    void code_class_name_table();
    void code_class_obj_table();
    void code_dispatch_table();
    void code_prot_obj();
    void code_init_method();
    void code_class_method();

    // The following creates an inheritance graph from
    // a list of classes.  The graph is implemented as
    // a tree of `CgenNode', and class names are placed
    // in the base class symbol table.

    void install_basic_classes();
    void install_class(CgenNodeP nd);
    void install_classes(Classes cs);
    void build_inheritance_tree();
    void set_relations(CgenNodeP nd);

   public:
    CgenClassTable(Classes, ostream& str);
    void code();
    CgenNodeP root();

    std::map<Symbol, int> class_tags;
    CgenNodeP get_class_node(Symbol class_name);
};

class CgenNode : public class__class {
   private:
    CgenNodeP parentnd;        // Parent of class
    List<CgenNode>* children;  // Children of class
    Basicness basic_status;    // `Basic' if class is basic
                               // `NotBasic' otherwise

   public:
    CgenNode(Class_ c, Basicness bstatus, CgenClassTableP class_table);

    void add_child(CgenNodeP child);
    List<CgenNode>* get_children() { return children; }
    void set_parentnd(CgenNodeP p);
    CgenNodeP get_parentnd() { return parentnd; }
    int basic() { return (basic_status == Basic); }

    std::vector<method_class*> get_methods();
    std::vector<attr_class*> get_attrs();
    std::map<Symbol, int> get_attrs_offset();

    
    std::map<Symbol, int> methods_offset;
    void code_init(ostream& str);
    int class_tag;
};

class BoolConst {
   private:
    int val;

   public:
    BoolConst(int);
    void code_def(ostream&, int boolclasstag);
    void code_ref(ostream&) const;
};

class Position {
   public:
    Position() : reg(NULL), offset(0) {}

    char* reg;
    int offset;
};

class Env {

   public:
    Env() : so(NULL) {
        param_table = new SymbolTable<Symbol, int>();
        attribute_table_map = new std::map<Symbol, SymbolTable<Symbol, int>*>();
    }
    ~Env() {
        delete (param_table);
        delete (attribute_table_map);
    }

    void attr_addid(CgenNodeP class_node, Symbol attr_name) {
        Symbol class_name = class_node->get_name();
        attribute_table_map->find(class_name)
            ->second->addid(
                attr_name,
                &(class_node->get_attrs_offset().find(attr_name)->second));
    }

    int* find_attr(Symbol attr_name) {
        return attribute_table_map->find(so->get_name())
            ->second->lookup(attr_name);
    }

    // self object
    CgenNodeP so;

    // method's param
    SymbolTable<Symbol, int>* param_table;

    // class's attribute
    // SymbolTable<Symbol, Position>* attribute_table;
    std::map<Symbol, SymbolTable<Symbol, int>*>* attribute_table_map;
};
