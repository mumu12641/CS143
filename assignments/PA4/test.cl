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
	moo:Object;
	a(x:Int):A{
		{
		self;
		}
	};

-- IF expr THEN expr ELSE expr FI
	test(x:Int,y:Bool):Int{
		{
			-- let expression
			let z : A ,sum:Int <- 0 in {

				not true;
				while true loop 2 pool;
				1 < 2;
				2 <= 3;
				sum / 1;
				~1;
				sum <- 1;
				sum;
				z.a(0);
			};

			-- if expression
			if ( y = true) then {
				x;
			} else {
				0;
				1;
			}
			fi;
		}
	};

	boo():Object {{ case moo of i:Int => 0;
			        b:Bool => true;
			        s:String => "1";
		     esac; }};
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
