class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.create(puppy_params)

    redirect_to puppy_path(@puppy)
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :breed, :age)
  end
end
