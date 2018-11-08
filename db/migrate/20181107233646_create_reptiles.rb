class CreateReptiles < ActiveRecord::Migration[5.2]
  def change
    create_table :reptiles do |t|
      t.string :name
      t.string :species
      t.integer :size
      t.integer :weight
      t.integer :age
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
