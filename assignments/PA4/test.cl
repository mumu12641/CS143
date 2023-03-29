class C inherits A{
	a : Int <- 0;
	b : Bool;
	c : A <- (new A);
	-- c : Bool; 
	init(x : Int, y : Bool) : A {
           {
		a <- x;
		b <- y;
		c@IO.out_string("123");
		a(x);
           }
	};

};

class A inherits IO{
	-- a:Int;
	a(x:Int):A{
		{
		self;
		}
	};

-- IF expr THEN expr ELSE expr FI
	test(x:Int,y:Bool):Int{
		{
			if ( y = true) then {
				x;
			} else {
				0;
				1;
			}
			fi;
		}
	};
};

Class Main  {
	main():A {
	 {
	  (new C).init(1,true);
	--   (new C).init(1,true,3);
	--   (new C).iinit(1,true);
	--   (new C);
	 }
	};
};
