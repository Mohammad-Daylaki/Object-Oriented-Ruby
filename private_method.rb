class Shef
  attr_accessor :name
  def initialize(name)
    self.name = name #=>self.name == @name here .
  end

  def intro
    puts "Hi,My name is @{self.name}"
  end
  def get_meal
    gather
    cut
    present
  end
  private #=> after private method every method we can't call it because it's private
  #=> https://rubyplus.com/articles/2711-Redefining-a-Private-Method-in-Ruby

  def gather
    puts "gather"
  end
  def cut
    puts "chooping veggies"
  end
  def present
    puts "present"
  end
end
mohammad = Shef.new("Mohammad")
puts mohammad. name
 mohammad.get_meal
