# TODO: Build out your Puppy class here
# Your puppy should have name, breed, and age attributes
# You will need to be able to pass these three attributes to initialization
# as well as readers and writers for the attributes

class Puppy < ApplicationRecord
  def to_s
    name + ' ' + breed + ' ' + age
  end
end
