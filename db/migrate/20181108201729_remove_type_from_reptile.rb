class RemoveTypeFromReptile < ActiveRecord::Migration[5.2]
  def change
    remove_column :reptiles, :type, :string
  end
end
