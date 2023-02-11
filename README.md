# OOP BASICS

A class is a blueprint for objects.

An object is an instance of a class.

if `Shape` is a class, then `x = Shape.new` creates an instance of Shape and makes `x` the reference of that object.

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

Available for anywhere within an application.

Can be useful but aren't common in Ruby since they don't mesh well with the idea of OOP.

The ability to separate blocks of logic from one another is a useful part of OOP therefore global variables are not preferred because it would result in different blocks of your code being dependent on them.

We define a global variable by putting a dollar sign `$` before the variable name.

```ruby
def basic_method
  puts $x
end

$x = 10
# => 10

# x is defined as a global variable and can be used anywhere in the application
```

### Instance or Object Variables

They are prefixed with an `@` symbol and have scope within and are associated with the currrent object.

```ruby
class Square
  def initialize(side_length)
    @side_length = side_length
  end
  def area
    @side_length * @side_length
  end
end

a = Square.new(10)
puts a.area
# => 100
```
This makes the variable accessible to any other method inside that object.

### Class Variables

The scope of a class variable is within the class itself as opposed to within the objects of that class.

Class variables start with two `@` symbols `@@`.

They can be useful got storing information relevant to all objects of a given class.

