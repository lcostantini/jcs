class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :cbu
      t.string :account
      t.string :name
      t.string :address
      t.string :phone
      t.string :city
      t.integer :postal_code

      t.timestamps
    end
    add_index :clients, :cbu, unique: true
  end
end
