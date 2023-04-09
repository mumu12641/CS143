
(*  Example cool program testing as many aspects of the code generator
    as possible.
 *)

class Main inherits IO{
  i : Int <- 0;
  s: String <- "hello";
  e: String;
  b: Bool <- true;

  main():Object { {

    -- if (i < 3) then 
    --   out_string("i<3") 
    --   -- 1
    -- else 
    --   out_string("i>3")
    --   -- 0 
    -- fi;
    -- out_string("\n");

    -- while(i < 3) loop
    --         {
    --           -- 1;
    --         out_int(i);
    --         out_string("\n");
            
    --         i <- i + 1;
    --         }
         
    --      pool;
    --      out_string("\n");
         
    -- let a:Int <- 1 ,
    --   b:Int<-2,
    --   c:Int<-3
    --    in {
    --   out_int(a+b+c+4);
    --   -- b;
    --   -- a;
    --   -- a + b;
    -- };
    -- out_string("\n");
    -- ~1;
    -- if(s  = "hello") then out_string("s==hello\n")
    -- else out_string("s!=hello\n")
    -- fi;

    -- if( not (i  <= 0)) then out_string("i  > 0\n")
    -- else out_string("i  <= 0\n")
    -- fi;
    -- i<=0;
    -- not b;

    -- isvoid(i);
    new IO.out_string("new\n");
  }
  };
  
  -- test(a:Int):Object{
  --   self@IO.out_int(i)
  -- };

};

