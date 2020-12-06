class Cart < ApplicationRecord
    belongs_to :user
    belongs_to :game, optional: true
    validates :quantity, presence: true
end
