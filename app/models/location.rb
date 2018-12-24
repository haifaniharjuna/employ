class Location < ApplicationRecord
	has_many :departements, dependent: :destroy
	accepts_nested_attributes_for :departements, allow_destroy: true
end
