class CreateAggressionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :aggression_details do |t|
      t.references :user, foreign_key: true
      t.string :perpetrator_name
      t.integer :perpetrator_age
      t.string :perpetrator_gender
      t.string :relatioship
      t.boolean :live_together
      t.date :aggression_date
      t.time :aggression_time
      t.string :mechanism
      t.string :scene
      t.text :proof_file
      t.float :latitude_report
      t.float :longitude_report

      t.timestamps
    end
  end
end
