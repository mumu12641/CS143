
(*  Example cool program testing as many aspects of the code generator
    as possible.
 *)

class Node{
    s:String;
    next:Node;

    pushOnTop(c:String):Node{
         let newNode :Node in {
            newNode <- (new Node).setS(c);
            newNode.setNext(self);
            newNode;
         }

   };

    setS(c:String):Node{
      {
         s <- c;
         self;
      }
   };

   setNext(n:Node):Node{
      {
        next <- n;
        self;
      }
   };

   getS():String{
    s
   };

   getNext():Node{
    next
   };
};

class Main inherits IO{
  top:Node;
  printStack():Object{
      let node:Node <- top in {
         while(not (isvoid node)) loop
         {
            (new IO).out_string(node.getS());
            (new IO).out_string("\n");
            node <- node.getNext();
         }
         pool;
      }
  };

  eval(s:String):Object{
    if (s = "d") then {
      printStack();
    }else{
          push(s);
    }fi
  };

  push(c:String):Object{
      if(isvoid top) then {
         let newNode :Node in {
              top <- (new Node).setS(c);
              top.setNext(newNode);
         };
      } else {
         top <- top.pushOnTop(c);
      }fi
   };

  main():Object { 
    let input: String in {
         while(true) loop
         {
            (new IO).out_string(">");
            input <- (new IO).in_string();
            eval(input);
         }
         pool;
      }
  };
};