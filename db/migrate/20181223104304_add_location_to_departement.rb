class AddLocationToDepartement < ActiveRecord::Migration[5.2]
  def change
    add_reference :departements, :location, foreign_key: true
  end
end
