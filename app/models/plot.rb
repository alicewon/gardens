class Plot < ApplicationRecord
  has_many :members_plots
  has_many :gardens_plots
  has_many :members, through: :members_plots
  has_many :gardens, through: :gardens_plots
end
