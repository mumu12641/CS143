#ifndef SEMANT_H_
#define SEMANT_H_

#include <assert.h>
#include <iostream>
#include <list>
#include <map>
#include "cool-tree.h"
#include "list.h"
#include "stringtab.h"
#include "symtab.h"

#define TRUE 1
#define FALSE 0

class ClassTable;
typedef ClassTable* ClassTableP;

// This is a structure that may be used to contain the semantic
// information such as the inheritance graph.  You may use it or not as
// you like: it is only here to provide a container for the supplied
// methods.

class Env {
   private:
   

   public:
    Class_ C;
    SymbolTable<Symbol, Symbol> *O;
    SymbolTable<Symbol, method_class> *M;
    Env() {
      O = new SymbolTable<Symbol, Symbol>();
      M = new SymbolTable<Symbol, method_class>();
      C = NULL;
   }


};

class ClassTable {
   private:
    int semant_errors;
    void install_basic_classes();
    ostream& error_stream;

   public:
    std::map<Symbol, Class_> all_classes;
    ClassTable(Classes);
    int errors() { return semant_errors; }
    ostream& semant_error();
    ostream& semant_error(Class_ c);
    ostream& semant_error(Symbol filename, tree_node* t);

    void check_main(Classes classes);
    void check_inherit(Classes classes);
};

#endif
