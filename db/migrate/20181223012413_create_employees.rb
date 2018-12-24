class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.date :hire_date
      t.string :job_id
      t.integer :salary
      t.integer :commision
      t.integer :manager_id
      t.string :address

      t.timestamps
    end
  end
end
