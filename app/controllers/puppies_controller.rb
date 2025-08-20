class PuppiesController < ApplicationController
  # TODO: Add your controller actions here
  # You'll need an 'index' action to display the homepage
  # You'll need a 'new' action to display the form
  # You'll need a 'create' action to process the form submission and redirect to show
  # You'll need a 'show' action to display the puppy information
  #
  # Remember: After creating a puppy, you should redirect to the show page

  def index
    @puppies = Puppy.all
  end

  def new
    @puppy = Puppy.new
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  def create
    @puppy = Puppy.create(puppy_params)
    render :show
  end

  private

  def puppy_params
    params.require(:puppy).permit(:name, :breed, :age)
  end
end
