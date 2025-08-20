class PuppiesController < ApplicationController
  # TODO: Add your controller actions here
  # You'll need an 'index' action to display the homepage
  # You'll need a 'new' action to display the form
  # You'll need a 'create' action to process the form submission and display the puppy
  #
  def index; end

  def new
    # @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.create!(puppy_params)
  end

  private

  def puppy_params
    params.permit(:name, :age, :breed)
  end
end
