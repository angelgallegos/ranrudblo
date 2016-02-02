class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.string :user_id
      t.string :micropost_id
      t.string :comment_id

      t.timestamps null: false
    end
  end
end
