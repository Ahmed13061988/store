class Game < ApplicationRecord
    has_many :owners, class_name: "Owner"
    has_many :customers, class_name: "Customer"
end
