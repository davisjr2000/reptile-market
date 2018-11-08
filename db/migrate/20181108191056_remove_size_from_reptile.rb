class RemoveSizeFromReptile < ActiveRecord::Migration[5.2]
  def change
    remove_column :reptiles, :size, :integer
  end
end
