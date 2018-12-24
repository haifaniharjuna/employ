class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :employee_id, :last_name
  belongs_to :departement
end
