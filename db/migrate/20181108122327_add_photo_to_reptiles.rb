class AddPhotoToReptiles < ActiveRecord::Migration[5.2]
  def change
    add_column :reptiles, :photo, :string
  end
end
