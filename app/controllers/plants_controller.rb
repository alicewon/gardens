class PlantsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def index
    @plants = Plant.all
    @members = Member.all

  end

  def show
    # return head(:forbidden) unless session.include? :member_id
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
      @plant.plot.occupied_status 
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

    plot = @plant.plot

    @plant.destroy
    plot.occupied_status
    
    redirect_to plants_path

  end

  def current_user
    session[:name]
  end

private

def plant_params
  params.require(:plant).permit(:name, :img_url, :date_planted, :height, :water, :sunlight, :member_id, :plot_id)
end

def require_login
  # return head(:forbidden) unless session.include? :member_id
  # unless current_user
  if !logged_in?
  # flash[:error] = "You must be logged in to view this page."
  flash[:login_message] = "You must be logged in to view this page."
  redirect_to controller: 'sessions', action: 'login' unless current_user
  end
end

end

