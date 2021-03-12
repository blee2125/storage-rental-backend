class Unit < ApplicationRecord
    validates :unit_number, presence: true
    has_many :rental_forms
end
