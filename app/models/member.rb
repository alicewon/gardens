class Member < ApplicationRecord
  has_many :members_plots
  has_many :plants
  has_many :plots, through: :members_plots
  validates :name, presence: true, uniqueness: true
end
