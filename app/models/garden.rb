class Garden < ApplicationRecord
  has_many :gardens_plots
  has_many :plots, through: :gardens_plots
  has_many :members, through: :plots
  has_many :plants, through: :members

end
