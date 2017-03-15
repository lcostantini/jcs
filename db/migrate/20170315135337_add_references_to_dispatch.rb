class AddReferencesToDispatch < ActiveRecord::Migration[5.0]
  def change
    add_reference :dispatches, :bidding, foreign_key: true
  end
end
