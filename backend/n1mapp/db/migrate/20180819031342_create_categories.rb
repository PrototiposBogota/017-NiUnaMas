class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.references :help_centers, foreign_key: true
      t.string :institution_category

      t.timestamps
    end
  end
end
