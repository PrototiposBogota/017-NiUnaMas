class CreateOtherAggressions < ActiveRecord::Migration[5.2]
  def change
    create_table :other_aggressions do |t|
      t.references :aggression_detail, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
