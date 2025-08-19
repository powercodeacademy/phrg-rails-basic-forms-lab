class PuppiesController < ApplicationController
  def index 
  end

  def new 
    @puppy = Puppy.new
  end

  def create 
    @puppy = Puppy.create(params.permit(:name, :breed, :age))
  end
end
