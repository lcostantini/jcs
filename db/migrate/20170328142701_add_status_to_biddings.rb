class AddStatusToBiddings < ActiveRecord::Migration[5.0]
  def change
    add_column :biddings, :status, :string
  end
end
