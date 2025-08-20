class Puppy
  attr_accessor :name, :breed, :age

  def initialize(name: nil, breed: nil, age: nil)
    @name = name
    @breed = breed
    @age = age
  end
end
