class Person
  attr_accessor :name, :age, :email
  @@all=[]
  def initialize(name, age, email)
    @name= name
    @age= age
    @email= email
    @@all << self #=> self here it's instance .
  end
  def self.all
    @@all
  end
  def self.find_by_name(name)
    self.all.find{|p| p.name ==name} #=> self here it's class method because it's inside class method, but if we definedinside instance method it will be an instance method so we should add .class to self.class.all
    #=> we can write this method in another way
    # def self.find_by_name(name)
    #   @@all.find{|p| p.name= name}
    # end
  end
end
mohammad = Person.new("mohammad", 25, "mohammad.daylaki@gmail.com")
avi = Person.new("Avi", 29, "Avi.programmer@gmail.com")
Person::all #=> [#<Person:0x00000002a378f0 @name="mohammad", @age=25,
# @email="mohammad.daylaki@gmail.com">,#<Person:0x00000002a3c198
#@name="Avi", @age=29, @email="Avi.programmer@gmail.com">]
Person::all[1]#<Person:0x00000002a3c198 @name="Avi", @age=29,
# @email="Avi.programmer@gmail.com">
Person.find_by_name("mohammad") #<Person:0x00000002a378f0 @name="mohammad",
# @age=25, @email="mohammad.daylaki@gmail.com">
#____________________________________________________________________________
# class Person
#   attr_accessor :name, :age, :email
#   @@all = {}
#   def initialize(name,age, email)
#     @name=@@all[name]
#     @age=@@all[age]
#     @email=@@all[email]
#   end
