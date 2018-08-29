class AggressionDetail < ApplicationRecord
  belongs_to :victim
  has_many :perpetrators dependent: :destroy
  has_many :other_aggressions dependent: :destroy
  has_many :sexual_aggressions dependent: :destroy

  validates :aggression_date, presence: true
  validate : aggression_date_cannot_be_in_the_past
  

  #https://stackoverflow.com/questions/8512691/how-to-validate-the-date-such-that-it-is-after-today-in-rails
  #http://guides.rubyonrails.org/v2.3.11/activerecord_validations_callbacks.html#creating-custom-validation-methods

  def aggression_date_cannot_be_in_the_past
    errors.add(:expiration_date, "can't be in the future")
    if !:expiration_date.blank? and expiration_date > date.today
    end


  validates :aggression_time, presence: true
  validates_inclusion_of :mechanism, in: @allowed_mechanism 
  @allowed_mechanism = ['Ahorcamiento/extrangulación/sofocación',
  'Caidas', 'Contundente/cortocundente', 'Cortante/ cortopunzante /punzante'
  'Proyectil arma de fuego', 'Quemadura por fuego o llama',
  'Quemadura por ácido, álcalis', 'sustancias corrosivas', 
  'Quemadura con liquido hirviente', 'Otros mecanismos',
  'Sustancias de uso doméstico que causan irritación']
  validates_inclusion_of :scene, in: @allowed_scene
  @allowed_scene = ['Vía publica', 'Vivienda', 'Centros educativos', 'Oficina o edificio de oficinas', 'Establecimiento comercial',
  'Espacios terrestres al aire libre (bosques, potreros, etc)', 'Lugares de esparcimiento con expendio de alcohol']
  
  validate :aggression_existence
  #https://stackoverflow.com/questions/2134188/validate-presence-of-one-field-or-another-xor
  #https://www.tutorialspoint.com/ruby/ruby_if_else.htm
  #https://www.safaribooksonline.com/library/view/the-ruby-programming/9780596516178/ch04s06.html
  private 
   def aggresion_existence
    unless :other_aggressions.blank? | :sexual_aggressions.blank?
      errors.add(:base, "Specify minimun a type of aggression")
   end
  end


end
