class WelcomeController < ApplicationController
  def index
    @gardens = Garden.all
  end
end
