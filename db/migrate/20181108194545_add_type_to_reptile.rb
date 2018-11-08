class AddTypeToReptile < ActiveRecord::Migration[5.2]
  def change
    add_column :reptiles, :type, :string
  end
end
