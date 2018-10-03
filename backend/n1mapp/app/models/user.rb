class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :aggression_details, dependent: :destroy
  
  

  #this is the 1st query
  def self.get_details
    self.joins(:aggression_details).select("name,surname,district,aggression_date,aggression_time,scene,mechanism,aggression_details.id", "admin_user")
  end
  #this is the 2nd query
  def self.get_users
    select("name","surname","email", "phone_number","document_type", "document_number", "district", "admin_user", "attendant_name", "attendant_phone_number", "sexual_orientation" ).where(admin_user: false)
  end
  
  #this callback is to set default values by calling the "init" function below
  after_initialize :init
 
  #only default booleans to 'false' if they're 'nil' to avoid overwriting a 'true'
  def init 
    self.admin_user = false if self.admin_user.nil?
  end


end
