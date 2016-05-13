class AddForeignKeysToMicroposts < ActiveRecord::Migration
  def change
    add_foreign_key :microposts, :users
    add_foreign_key :microposts, :categories
  end
end
