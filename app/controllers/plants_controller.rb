class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
    @members = Member.all
    @gardens = Garden.all
    @plots = Plot.all
  end

  def new
    @plant = Plant.new
    @members = Member.all
    @plots = Plot.find_by_id(params[:plot_name])
    puts Plot.find_by_id(params[:plot_name])
    # @plots = Plot.all
  end

  def create
    @plant = Plant.new(plant_params)

    if @plant.save
      flash[:success] = "Plant Created Successfully!"
      redirect_to plant_path(@plant)
    else
      flash[:message] = @plant.errors.full_messages
      render :new
    end

    #check parameters, look at garden selected, 
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])
    if @plant.update plant_params
      redirect_to @plant
    else
      flash[:message] = @plant.errors.full_messages
      render :edit
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to plants_path

  end

private

def plant_params
  params.require(:plant).permit(:name, :img_url, :date_planted, :height, :water, :sunlight, :member_id, :plot_id)
end

end

