class Person 
  attr_accessor :name,:age,:email 
  @@all=[]
  def initialize(name,age,email)
    @name=name 
    @age=age 
    @email=email
    normalize_name #=> we write our method here because we need to save our name in capitalize way before it's saved inside @@all varaible .
    @@all << self
  end
  def self.all 
    @@all
  end
  def self.find_by_name(name)
    @@all.find{|p| p.name==name}
  end
  def normalize_name #=> here also we can defind this mrthod as class method 
    @name= name.split(" ").map{|word| word.capitalize}.join(" ")
  end
end

shereen=Person.new("shereen messi",29,"s.m@gmail.com")
liloz=Person.new("Liloz suliman",19,"l.s@gmail.com")
Person.find_by_name("Liloz Suliman")#=> #<Person:0x007fc817c4eed8 @name="Liloz Suliman", @age=19, @email="l.s@gmail.com">
# shereen.normalize_name 
Person.all[0] #=> #<Person:0x007f0737fad8c8 @name="Shereen Messi", @age=29, @email="s.m@gmail.com">

 
