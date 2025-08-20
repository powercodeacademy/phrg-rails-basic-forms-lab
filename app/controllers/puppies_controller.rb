class PuppiesController < ApplicationController
  def index
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.new(
      name: params[:name],
      breed: params[:breed],
      age: params[:age]
    )
  end
end
