class CreateBiddings < ActiveRecord::Migration[5.0]
  def change
    create_table :biddings do |t|
      t.string :code
      t.string :provision_order

      t.timestamps
    end
  end
end
