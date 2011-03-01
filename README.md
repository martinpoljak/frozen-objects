Frozen Objects
==============

**frozen-objects** provides some syntactic sugar of implicitly frozen 
objects and an freezing operator useful for example in class constants.

    require "frozen-objects"

    class Foo
        SOME_ARRAY = Frozen::Array[:a, :b]   # or any other Array constructing methods
        SOME_HASH = Frozen::Hash[:a => :b]   # or any other Hash constructing methods
        SOME_STRING = Frozen::String::new("bar")
    end
    
    Foo::SOME_ARRAY.frozen?     # will return true
    Foo::SOME_HASH.frozen?      # will return true
    Foo::SOME_STRING.frozen?    # will return true
    
All attempts to modify these objects will fail on `RuntimeError`. 
Objects are reported as frozen of sure. From other points of view they 
are "normal" and fully compatible with Ruby implicitly 
non-frozen objects.

### Freezing Operator

`Frozen` module defines also *frozen operator*. It's intended for nice
and simple freezing whatever. Consider example above:

    require "frozen-objects"

    class Foo
        SOME_ARRAY = Frozen << [:a, :b]
        SOME_HASH = Frozen << {:a => :b}
        SOME_STRING = Frozen << "bar"
        
        WHATEVER = Frozen << SomeClass::new
    end

Both methods are equivalent. Select that one which is suitable for you.

Contributing
------------

1. Fork it.
2. Create a branch (`git checkout -b 20101220-my-change`).
3. Commit your changes (`git commit -am "Added something"`).
4. Push to the branch (`git push origin 20101220-my-change`).
5. Create an [Issue][2] with a link to your branch.
6. Enjoy a refreshing Diet Coke and wait.

Copyright
---------

Copyright &copy; 2011 [Martin Kozák][3]. See `LICENSE.txt` for
further details.

[2]: http://github.com/martinkozak/frozen-objects/issues
[3]: http://www.martinkozak.net/
