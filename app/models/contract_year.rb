class ContractYear < ApplicationRecord
  belongs_to :contract
  belongs_to :season
end
