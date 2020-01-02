class Plot < ApplicationRecord
  belongs_to :garden
  has_many :members_plots
  has_many :members, through: :members_plots
  has_many :plants

  # if plot has plants
  #   occupied = true


  def occupied_status 
    if self.plants.count == 0
      self.occupied = false
    else
      self.occupied = true
    end

    self.save
    
  end





end
