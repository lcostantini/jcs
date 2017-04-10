class Item < ApplicationRecord
  belongs_to :provider
  belongs_to :dispatch

  validates_presence_of :name, :price, :cost
end
