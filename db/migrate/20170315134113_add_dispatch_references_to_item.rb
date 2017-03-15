class AddDispatchReferencesToItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :dispatch, foreign_key: true
  end
end
