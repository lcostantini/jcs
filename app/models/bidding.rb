class Bidding < ApplicationRecord
  belongs_to :client
  has_many :dispatches

  STATUS = ['Proxima', 'Realizada', 'Cobrada']

  validates_presence_of :code, :provision_order, :client_id, :dispatches
  validates_inclusion_of :status, in: ->(bidding) { STATUS }

  def rails_admin_status_enum
    STATUS
  end
end
