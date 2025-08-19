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
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    render :create
  end
end
