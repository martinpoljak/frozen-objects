Frozen Objects
==============

**frozen-objects** provides some syntactic sugar of implicitly frozen 
objects and an freezing operator useful especially in *class constants*. Dont't find anything useful or some rocket science here. It's just sugar only, nothing more, nothing less. 

```ruby
require "frozen-objects"

class Foo
    SOME_ARRAY = Frozen::Array[:a, :b]   
    # ...or any other Array constructing methods
    SOME_HASH = Frozen::Hash[:a => :b]   
    # ...or any other Hash constructing methods
    SOME_STRING = Frozen::String::new("bar")
end

Foo::SOME_ARRAY.frozen?     # will return true
Foo::SOME_HASH.frozen?      # will return true
Foo::SOME_STRING.frozen?    # will return true
```

All attempts to modify these objects will fail on `RuntimeError`. 
Objects are also reported as frozen. From other points of view they 
are "normal" and fully compatible with Ruby implicitly 
non-frozen objects.

### Freezing Operator

`Frozen` module defines also *frozen operator*. It's intended for nice
and simple freezing whatever. Consider example above:

```ruby
require "frozen-objects"

class Foo
    SOME_ARRAY = Frozen << [:a, :b]
    SOME_HASH = Frozen << {:a => :b}
    SOME_STRING = Frozen << "bar"
    
    WHATEVER = Frozen << SomeClass::new
end
```

Both methods are equivalent. 

Copyright
---------

Copyright &copy; 2011 &ndash; 2015 [Martin Poljak][3]. See `LICENSE.txt` for further details.

[2]: http://github.com/martinkozak/frozen-objects/issues
[3]: http://www.martinpoljak.net/
