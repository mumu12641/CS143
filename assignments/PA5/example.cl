
(*  Example cool program testing as many aspects of the code generator
    as possible.
 *)

-- class Node{
--     s:String;
--    next:Node;

--     init(c:String, nextNode:Node):Node{
--       {
--          s <- c;
--          next <- nextNode;
--          self;
--       }
--    };
-- };

class Main inherits IO{
  i : Int <- 0;
  s: String <- "hello";
  e: String;
  b: Bool <- true;

  main():Object { 
    let k:Int ,j:Int , l:Int , p:Int,s:Int,q:Int,w:Int in{
      k <- 0;
      out_int(k);
    }
  };
};