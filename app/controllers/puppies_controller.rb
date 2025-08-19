class PuppiesController < ApplicationController
  def index
    @puppies = []
  end

  def show
  end

  def new
    @puppy = Puppy.new("", "", "")
  end

  def create
    @puppy = Puppy.new(puppy_params)
    render :create
  end

  private

  def puppy_params
    params.permit(:name, :breed, :age)
  end
end
