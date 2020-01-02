class PlotsController < ApplicationController
  def index
    @plots = Plot.all
  end

  def show
    @plot = Plot.find(params[:id])
  end

  # def plot_update
  #   @plots.each do |plot|
  #     plot.occupied_status
  #   end
  # end

  # def toggle_occupied
  #   @blog.toggle!(:occupied)
  # end

private

def plot_params
  params.require(:plot).permit(:occupied, :garden_id, :plot_name)
end
  #enumerate over all plots, if it has member, change occupied value to TRUE
end
