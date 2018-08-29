class CreateAggressionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :aggression_details do |t|
      t.references :victim, foreign_key: true
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
