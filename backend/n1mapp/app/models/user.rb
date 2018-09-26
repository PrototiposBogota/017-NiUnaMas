class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :aggression_details, dependent: :destroy
  def self.get_details
    self.joins(:aggression_details).select("name,surname,district,aggression_date,aggression_time,scene,mechanism,aggression_details.id")
  end

end
