class OtherAggression < ApplicationRecord
  belongs_to :aggression_detail
  validates :name, presence: true
  validates_inclusion_of :name, in: @allowed_name_types
  @allowed_name_types = ['Física', 'Psicológica', 'Negligencia y abandono']
  
end
