class Contract < ApplicationRecord
  belongs_to :player
  belongs_to :team
  belongs_to :start_season
  belongs_to :end_season
end
