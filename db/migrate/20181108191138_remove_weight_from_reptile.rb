class RemoveWeightFromReptile < ActiveRecord::Migration[5.2]
  def change
    remove_column :reptiles, :weight, :integer
  end
end
