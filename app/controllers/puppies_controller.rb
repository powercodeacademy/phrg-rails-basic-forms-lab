class PuppiesController < ApplicationController
  def index
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.create(puppy_params)
    @puppy.save
    redirect_to puppy_path(@puppy)
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :breed, :age)
  end
end
