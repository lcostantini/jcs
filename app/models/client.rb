class Client < ApplicationRecord
  has_many :biddings

  validates_presence_of :name, :cuit, :cbu
end
