class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.new(puppy_params)
    @puppy.save
    redirect_to @puppy
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :breed, :age)
  end
end
