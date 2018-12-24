class CreateDepartements < ActiveRecord::Migration[5.2]
  def change
    create_table :departements do |t|
      t.string :departement_name
      t.integer :manager_id

      t.timestamps
    end
  end
end
