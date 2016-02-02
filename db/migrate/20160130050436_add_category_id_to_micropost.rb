class AddCategoryIdToMicropost < ActiveRecord::Migration
  def change
    add_column :microposts, :category_id, :int
  end
end
