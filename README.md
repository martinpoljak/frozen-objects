Frozen Objects
==============

**frozen-objects** provides syntax sugar of implicitly frozen objects 
useful for example in class constants.

    require "frozen-objects"

    class Foo
        SOME_ARRAY = Frozen::Array[:a, :b]   # or any other Array constructing methods
        SOME_HASH = Frozen::Hash[:a => :b]   # or any other Hash constructing methods
        SOME_STRING = Frozen::String::new("a")
    end
    
    Foo::SOME_ARRAY.frozen?     # will return true
    Foo::SOME_HASH.frozen?      # will return true
    Foo::SOME_STRING.frozen?    # will return true
    
All attempts to modify these objects will fail on `RuntimeError`. 
Objects are reported as frozen of sure. From other points of view they 
are "normal" and fully compatible with Ruby implicitly 
non-frozen objects.

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
