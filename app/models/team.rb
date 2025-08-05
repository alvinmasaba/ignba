class Team < ApplicationRecord
  belongs_to :manager

  has_many :players
  has_many :contracts, through: :players
end
