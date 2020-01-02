class Plot < ApplicationRecord
  belongs_to :garden
  has_many :members_plots
  has_many :members, through: :members_plots
  has_many :plants
end
