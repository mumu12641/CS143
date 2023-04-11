 (*
 *  CS164 Fall 94
 *
 *  Programming Assignment 1
 *    Implementation of a simple stack machine.
 *
 *  Skeleton file
 *)


class Node {
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

   getNext():Node{
      {
         next;
      }
   };

   getS():String{
      {
         s;
      }
   };

};


class Main inherits A2I {

   top:Node;

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

   evaluate():Node{
      {
         if (isvoid top)then{
            top;
         }
         else
            if(top.getS() = "s")then{
               top <- swap();
            }
            else
               if(top.getS() = "+")then{
                  let n1: Node <- top.getNext(),
                        n2: Node <- n1.getNext(),
                        sum: Int,
                        ret:Node in {
                           sum <- (new A2I).a2i(n1.getS()) + (new A2I).a2i(n2.getS());
                           -- (new IO).out_int(sum);
                           ret <- (new Node).setS((new A2I).i2a(sum));
                           ret.setNext(n2.getNext());
                           top <- ret;
                        };
               }
               else
                  -- abort()
                  (new IO).out_string("nothing to evaluate\n")
               fi
            fi
         fi;
         top;
      }
   };

   swap():Node{

         let next:Node <- top.getNext().getNext() in {
            top <- top.getNext();
            top.setNext(next.getNext());
            next.setNext(top);
            next;
         }

   };

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

   excute(input:String): Object{
      {

         if(input = "d") then{
            printStack();
         }
         else
            if(input = "x")then{
               (new IO).out_string("stop!\n");
               abort();
            }
            else
               if(input = "e")then{
                  top <- evaluate();
               }
               else
                  if (input = "s")then{
                     push(input);
                  }
                  else
                     if(input = "p")then{
                        printStack();
                     }
                     else
                        push(input)
                     fi
                  fi
               fi
            fi
         fi;
      }
   };

   main() : Object {
      let input: String in {
         while(true) loop
         {
            (new IO).out_string(">");
            input <- (new IO).in_string();
            excute(input);
         }
         pool;
      }
   };

};


