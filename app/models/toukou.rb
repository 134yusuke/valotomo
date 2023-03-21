class Toukou < ApplicationRecord
  belongs_to :user
  attachment :location
  attachment :point
  attachment :result
end
