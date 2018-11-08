class AddUserRefToReptiles < ActiveRecord::Migration[5.2]
  def change
    add_reference :reptiles, :user, foreign_key: true
  end
end
