class HelpCenter < ApplicationRecord
    has_many :categories ,dependent: :destroy
end
