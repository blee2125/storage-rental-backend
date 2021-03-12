class RentalForm < ApplicationRecord
    validates :unit_number, :customer, presence: true
    belongs_to :unit
end
