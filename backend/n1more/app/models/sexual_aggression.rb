class SexualAggression < ApplicationRecord
  belongs_to :aggression_detail
  validates :name, presence: true
  validates_inclusion_of :name, in: @allowed_sexual_name_types
  @allowed_sexual_name_types = ['Abuso sexual', 'Acoso sexual', 'Violacion', 
  'Explotacion sexual comercial de niños, niñas y adolescentes',
  'Trata de personas con fines de explotacion sexual',
  'Actos sexuales con uso de la fuerza',
  'Otros actos sexuales']
  
end
