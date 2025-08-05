class Contract < ApplicationRecord
  belongs_to :player
  belongs_to :team
  belongs_to :start_season, class_name: "Season"
  belongs_to :end_season, class_name: "Season"

  has_many :contract_years, dependent: :destroy 
end
