
class C inherits A{
	a : Int <- 0;
	b : Bool;
	-- c : Bool; 
	init(x : Int, y : Bool) : A {
           {
		a <- x;
		b <- y;
		a();
           }
	};
	test(x:Int,y:Bool):A{
		{
			a();
		}
	};

};

class A inherits IO{
	-- a:Int;
	a():A{{
		self;
	}
	};

	test(x:Int,y:Bool):A{
		{
			self;
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
