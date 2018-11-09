class AddElementToReptile < ActiveRecord::Migration[5.2]
  def change
    add_column :reptiles, :element, :string
  end
end
