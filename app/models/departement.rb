class Departement < ApplicationRecord
	has_many :employees, dependent: :destroy
	belongs_to :location
	# has_one :location, optional: true
	accepts_nested_attributes_for :employees, allow_destroy: true
end
