class GardensController < ApplicationController
  helper_method :total_plots, :available_plots
  
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
    @plots = Plot.all
    @plants = Plant.all
  end

  private

  def total_plots
    @garden.plots.count 
  end

  def available_plots 
    @garden.plots.select { |plot| plot.occupied == false }.count
  end

end
