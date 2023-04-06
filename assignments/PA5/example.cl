
(*  Example cool program testing as many aspects of the code generator
    as possible.
 *)

class Main  inherits IO{
  i : Int <- 3 ;
  s: String <- "hello";
  -- e: String;
  -- t: Test;
  -- b: Bool;

  main():Int { 0 };
};

class Test{
  test():String {
    {
      "world";
    }
  };
};
