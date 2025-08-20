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
