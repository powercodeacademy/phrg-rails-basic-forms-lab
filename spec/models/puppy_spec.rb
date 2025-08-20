require "rails_helper"

RSpec.describe Puppy, type: :model do
  let!(:puppy) { Puppy.create(name: "brad", breed: "black lab", age: "2") }

  it "can create a new instance of the puppy class" do
    expect(Puppy.new(name: "brad", breed: "black lab", age: "2")).to be_an_instance_of(Puppy)
  end

  it "can read a puppy name" do
    expect(puppy.name).to eq("brad")
  end

  it "can read a puppy breed" do
    expect(puppy.breed).to eq("black lab")
  end

  it "can read a puppy age" do
    expect(puppy.age).to eq("2")
  end

  it "can change puppy age" do
    puppy.update(age: "3")
    expect(puppy.reload.age).to eq("3")
  end

  it "can change puppy name" do
    puppy.update(name: "brad the beast")
    expect(puppy.reload.name).to eq("brad the beast")
  end

  it "can change puppy breed" do
    puppy.update(breed: "the best black lab")
    expect(puppy.reload.breed).to eq("the best black lab")
  end
end
