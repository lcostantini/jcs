class AddPaidToDispatch < ActiveRecord::Migration[5.0]
  def change
    add_column :dispatches, :paid, :boolean
  end
end
