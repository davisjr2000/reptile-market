class RemoveSpeciesFromReptile < ActiveRecord::Migration[5.2]
  def change
    remove_column :reptiles, :species, :string
  end
end
