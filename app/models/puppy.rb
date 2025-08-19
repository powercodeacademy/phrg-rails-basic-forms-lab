class Puppy < ApplicationRecord 
  def self.new(name = nil, breed = nil, age = nil, **attrs)
    if name && breed && age
      super(attrs.merge(name: name, breed: breed, age: age))
    else
      super
    end
  end
end
