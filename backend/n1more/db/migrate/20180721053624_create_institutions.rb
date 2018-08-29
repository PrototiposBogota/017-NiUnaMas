class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.references :attention_center, foreign_key: true
      t.string :institution_type

      t.timestamps
    end
  end
end
