class AttentionCenter < ApplicationRecord
    has_many :institutions
    validates :code, presence: true, length: { maximum: 4 }
    validates :name, presence: true, length: { maximum: 255 }
    validates :latitude, presence: true
    validates_inclusion_of :latitude, :in => 4.616383..4.643759
    validates :longitude, presence: true
    validates_inclusion_of :longitude, :in => -74.075538..-74.44982
    #https://stackoverflow.com/questions/6881900/how-to-check-if-a-number-is-included-in-a-range-in-one-statement
    validates :phone_number, presence: true, length: { maximum: 12 }
    validates :schedule, presence: true, length: { maximum: 255 }
    validates :address, presence: true, length: { maximum: 255 }
    
    
    
end
