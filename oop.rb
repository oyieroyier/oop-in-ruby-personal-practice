class Shape
end

class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end

  def area
    @side_length * @side_length
  end

  def perimeter
    @side_length * 4
  end
end

class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def area
    @base_width * @height / 2
  end

  def perimeter
    @side1 + @side2 + @side3
  end
end

my_square = Square.new(5)

puts my_square.area
puts my_square.perimeter

def basic_method
  puts x
end

x = 10
# basic_method

def basic_method
  x = 50
  puts x
end

x = 10
basic_method
puts x

class Oblong
  def self.test_method
    puts "Hello from the Oblong class!"
  end

  def test_method
    puts "Hello from an instance of the Oblong class!"
  end
end

Oblong.test_method
Oblong.new.test_method

class ParentClass
  def method_1
    puts "Hello from method 1 in the parent class!"
  end

  def method2
    puts "Hello from method 2 in the parent class!"
  end
end

class ChildClass < ParentClass
  def method2
    puts "Hello from method 2 in the child class!"
  end
end

my_object = ChildClass.new
puts my_object.method_1
puts my_object.method2

class Person
  #   attr_reader :first_name, :last_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    @first_name
    @last_name
  end
end

class Doctor < Person
  def name
    "Dr #{super}"
  end
end

kimathi = Doctor.new("Kimathi", "Njoki")

puts kimathi.name

class Human
  attr_accessor :name, :age, :gender
  # def initialize(name, age)
  # 	@name = name
  # 	@age = age
  # end
end

simon = Human.new
simon.name = "Simon"
simon.age = 20
simon.gender = "Male"

puts simon.instance_variables

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Cat < Animal
  def talk
    "Meaoww!!"
  end
end

class Dog < Animal
  def talk
    "Wooof!!"
  end
end

animals = [
  Cat.new("Flossie"),
  Dog.new("Maxie"),
  Cat.new("Bingo"),
  Dog.new("Simon"),
]

animals.each { |animal| puts animal.talk }
