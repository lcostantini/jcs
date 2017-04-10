class Provider < ApplicationRecord
  has_many :items

  validates_presence_of :name, :cuit, :cbu, :phone
end
