class AddReferencesToBidding < ActiveRecord::Migration[5.0]
  def change
    add_reference :biddings, :client, foreign_key: true
  end
end
