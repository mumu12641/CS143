class Node inherits IO{
    s:String;
    next:Node;

    init(c:String, nextNode:Node):Node{
      {
         s <- c;
         next <- nextNode;
         (new IO).out_string(c);
         (new IO).out_string(getS());
         self;
      }
   };

   pushOnTop(c:String):Node{
         let newNode :Node in {
            newNode <- (new Node).init(c,self);
            newNode;
         }

   };

    getNext():Node{
      {
         next;
      }
   };

   getS():String{
    --   {
    --      s;
    --   }
    s
   };
};

class Main inherits IO{
    a:String <- "A\n";
    top:Node;

     push(c:String):Object{
        --  let newNode :Node in {
            -- top <- (new Node).init(c, newNode);
            -- if (isvoid top) then (new IO).out_string("top is void\n")
            -- else  {
                (new IO).out_string("top is not void\n")
                -- (new IO).out_string(top.getS());
            -- }
            -- fi;
        --  }

   };

   printStack():Object{
        1
   };

   getA():String{
    a
   };


    excute(input:String): Object{
        if(input = "d")then{
            
            printStack();
        }else{
            push(input);
        }
        fi
    };

    main():Object{{

    
        let input: String <- "3", k:Int ,j:Int , l:Int , p:Int,s:Int,q:Int,w:Int    in {
            -- (new IO).out_string(">");
            -- input <- "1";
            -- (new IO).out_string(getA());
            -- (new IO).out_string("\n");
            -- excute(input);

            -- (new IO).out_string(">");
            -- input <- "d";
            1;
            -- (new IO).out_string(input);
            -- (new IO).out_string("\n");
            -- excute(input);
        };
        let g :Int in {
            1;
        };
    }
    };
};