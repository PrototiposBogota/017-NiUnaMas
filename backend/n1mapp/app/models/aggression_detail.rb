class AggressionDetail < ApplicationRecord
  belongs_to :user
  has_many :sexual_aggressions, dependent: :destroy
  has_many :other_aggressions, dependent: :destroy
end
