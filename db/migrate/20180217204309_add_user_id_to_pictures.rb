class AddUserIdToPictures < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :user_id, :interger
    add_index :pictures, :user_id
  end
end
