class AddForeignKeysToComments < ActiveRecord::Migration
  def change
    add_foreign_key :comments, :users
    add_foreign_key :comments, :microposts
    add_foreign_key :comments, :comments
  end
end
