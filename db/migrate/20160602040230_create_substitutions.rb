class CreateSubstitutions < ActiveRecord::Migration
  def change
    create_table :substitutions do |t|
      t.string :replace_what
      t.string :replace_with
      t.string :substitution_type_id
      t.string :user_id

      t.timestamps null: false
    end
  end
end
