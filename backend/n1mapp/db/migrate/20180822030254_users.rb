class Users < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :surname, :string
    add_column :users, :phone_number, :string
    add_column :users, :document_type, :string
    add_column :users, :document_number, :string
    add_column :users, :attendant_name, :string
    add_column :users, :attendant_phone_number, :string
    add_column :users, :sexual_orientation, :string
    add_column :users, :district, :string
    add_column :users, :picture, :string
  end
end
