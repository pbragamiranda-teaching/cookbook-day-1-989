class Cat
  attr_reader :name
  # attr_writer :color

  # def color=(new_color)
  #   @color = new_color
  # end
  # STATE
  def initialize(name, color)
    @name = name
    @color = color
  end

  # BEHAVIOR
  def dye(new_color)
    @color = new_color
    self
  end

  def self.animal_family
    "Mammal"
  end
end


garfield = Cat.new("Garfield", "orange")

puts "painting the hair of my cat.."
garfield.dye("green").dye("black").dye("white")
p garfield

# p Cat.animal_family
