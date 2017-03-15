class Item < ApplicationRecord
  belongs_to :provider
  belongs_to :dispatch
end
