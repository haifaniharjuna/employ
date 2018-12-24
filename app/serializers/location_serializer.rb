class LocationSerializer < ActiveModel::Serializer
  attributes :street_address, :postal_code, :city
  has_many :departements
end
