class Plant < ApplicationRecord
  belongs_to :member
  belongs_to :plot
  validates :name, presence: true
end
