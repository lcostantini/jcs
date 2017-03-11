class CreateDispatches < ActiveRecord::Migration[5.0]
  def change
    create_table :dispatches do |t|
      t.date :expire_date

      t.timestamps
    end
  end
end
