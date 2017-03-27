class AddCuitToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :cuit, :integer
  end
end
