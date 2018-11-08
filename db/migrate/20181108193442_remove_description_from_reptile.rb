class RemoveDescriptionFromReptile < ActiveRecord::Migration[5.2]
  def change
    remove_column :reptiles, :description, :text
  end
end
