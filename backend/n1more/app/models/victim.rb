class Victim < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    has_many :aggression_details, dependent: :destroy
    validates :name, presence: true, length: { maximum: 50 }
    validates :surname, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 }, format:{with: VALID_EMAIL_REGEX, "please insert a valid email address"}
    validates :password, presence: true, length: { in: 6..20 }
    validates :phone_number, presence: true, length: { maximum: 10 }
    validates :document_type, presence: true
    validates_inclusion_of :district, in: @allowed_document_type
    validates :document_number, presence: true, length: { maximum: 20 }
    validates :sexual_orientation, presence: true
    validates_inclusion_of :sexual_orientation, in: @allowed_gender
    validates :district, presence: true
    validates_inclusion_of :district, in: @allowed_districts
    validates :attendant_name, length: { maximum: 50 }
    validates :attendant_phone_number, length: { maximum: 10 }
    @allowed_document_type = ['Registro civil', 'Tarjeta de identidad', 'Cedula de ciudadania', 'Cedula de extranjeria', 'Pasaporte', 'Menor sin ID', 'Adulto sin ID']
    @allowed_gender = ['Masculino', 'Femenino', 'Transgénero', 'Intergénero', 'Otro']
    @allowed_districts = ['Usquén', 'Chapinero', 'Santa Fe', 'San Cristóbal', 'Usme', 'Tunjuelito', 'Bosa', 'Kennedy', 'Fontibón', 'Engativá', 'Suba', 'Barrios Unidos', 'Teusaquillo', 'Los Mártires', 'Antonio Narino', 'Puente Aranda', 'La Candelaria', 'Rafael Uribe Uribe', 'Ciudad Bolívar', 'Sumpaz']
    #https://stackoverflow.com/questions/12059415/rails-validate-in-model-that-value-is-inside-array
end
