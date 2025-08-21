class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end

  def new
    @puppy = Puppy.new
  end
end
