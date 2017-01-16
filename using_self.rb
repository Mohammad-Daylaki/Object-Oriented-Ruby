#Class
class Dog
  attr_accessor :name
  @@all=[]
  puts "inside class #{self}" #=> self here it's class it's self.
  def initialize(name)
    @name=name
    @@all << self #=>self it's instance here.
    #=> when we write self inside instance method it will be an instance
    #=> but if we write it in class method self it's mean here class it self.
  end
  def bark
    puts "Woof!"
    puts "inside bark #{self.name}"
  end
  def self.all
    @@all
    puts "inside class method #{self}"#=> self inside string here it's object it's self.
  end
end
fido=Dog.new("Fido")
snoopy=Dog.new("Snoopy")
puts fido.name #=> Fido
snoopy.name #=> it will not evoke any thing .
fido.bark #=> inside bark Fido
 Dog.all #=> inside class method Dog
# Dog.bark #=> undefined method `bark' for Dog:Class (NoMethodError)
