class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.new(puppy_params)
    if @puppy.save
      redirect_to @puppy
    else
      render :new
    end
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :breed, :age)
  end
end
