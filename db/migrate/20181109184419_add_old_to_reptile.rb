class AddOldToReptile < ActiveRecord::Migration[5.2]
  def change
    add_column :reptiles, :old, :string
  end
end
