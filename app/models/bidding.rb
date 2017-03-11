class Bidding < ApplicationRecord
  belongs_to :client
  has_many :dispatches
end
