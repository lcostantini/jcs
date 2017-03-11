class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.string :cbu
      t.string :account
      t.string :name
      t.string :address
      t.string :phone
      t.string :city
      t.integer :postal_code

      t.timestamps
    end
    add_index :providers, :cbu, unique: true
  end
end
