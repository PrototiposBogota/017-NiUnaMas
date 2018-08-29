class CreateAttentionCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :attention_centers do |t|
      t.string :code
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :phone_number
      t.text :picture
      t.string :schedule
      t.string :address

      t.timestamps
    end
  end
end
