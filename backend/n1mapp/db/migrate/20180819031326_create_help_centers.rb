class CreateHelpCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :help_centers do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :phone_number
      t.string :picture
      t.string :schedule
      t.string :address

      t.timestamps
    end
  end
end
