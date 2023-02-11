# OOP BASICS

A class is a blueprint for objects.

An object is an instance of a class.

if `Shape` is a class, then `x = Shape.new` creates an instance of Shape and makes x the reference of that object.

## Local, Global, Object, and Class Variables

### Local Variables

Basic variable. It can be used only in the place where it wwas defined.
It is local in scope.

```ruby
def basic_method
  puts x
end

x = 10
basic_method
# => NameError (undefined local variable or method `x' for main:Object)
```

When we invoke this method, we get an error because the `x` only available is in the global scope where it was defined.

The `x` inside the method scope is undefined.

Local variables must always be used in the scope they were defined:

Another example:

```ruby
def basic_method
  x = 50
  puts x
end

x = 10
basic_method
puts x

# => 50
# => 10
```

Because of scoping, the `x` inside the method is not the same as the `x` in the global scope.

This shows that local variables live entirely in thei original scope.

### Global Variables