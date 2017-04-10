class Dispatch < ApplicationRecord
  belongs_to :bidding
  has_many :items

  validates_presence_of :expire_date, :bidding_id, :paid
end
