class RemoveAgeFromReptile < ActiveRecord::Migration[5.2]
  def change
    remove_column :reptiles, :age, :integer
  end
end
