class CreateSubstitutionTypes < ActiveRecord::Migration
  def change
    create_table :substitution_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
