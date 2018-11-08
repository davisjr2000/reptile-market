class AddDescriptionToReptile < ActiveRecord::Migration[5.2]
  def change
    add_column :reptiles, :description, :text
  end
end
