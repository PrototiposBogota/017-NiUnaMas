class CreateVictims < ActiveRecord::Migration[5.2]
  def change
    create_table :victims do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password
      t.string :phone_number
      t.string :document_type
      t.string :document_number
      t.string :attendant_name
      t.string :attendant_phone_number
      t.string :sexual_orientation
      t.string :district
      t.text :picture

      t.timestamps
    end
  end
end
