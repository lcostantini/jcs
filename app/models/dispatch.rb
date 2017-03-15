class Dispatch < ApplicationRecord
  belongs_to :bidding
  has_many :items
end
