class Institution < ApplicationRecord
  belongs_to :attention_center
  validates :name, presence: true, length: { maximum: 50 }
end
