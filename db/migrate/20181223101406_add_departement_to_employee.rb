class AddDepartementToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :departement, foreign_key: true
  end
end
