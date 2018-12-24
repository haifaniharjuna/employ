class DepartementSerializer < ActiveModel::Serializer
  attributes :id, :departement_name
  belongs_to :employees
  # has_one :location
end
