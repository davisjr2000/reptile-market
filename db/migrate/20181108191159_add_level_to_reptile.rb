class AddLevelToReptile < ActiveRecord::Migration[5.2]
  def change
    add_column :reptiles, :level, :integer
  end
end
