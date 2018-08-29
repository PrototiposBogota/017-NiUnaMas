class CreatePerpetrators < ActiveRecord::Migration[5.2]
  def change
    create_table :perpetrators do |t|
      t.references :aggression_detail, foreign_key: true
      t.integer :age
      t.string :name
      t.string :gender
      t.string :relationship
      t.boolean :live_together

      t.timestamps
    end
  end
end
