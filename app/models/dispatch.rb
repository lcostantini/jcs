class Dispatch < ApplicationRecord
  belongs_to :bidding
  has_many :providers
end
