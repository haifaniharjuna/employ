class EmployeesController < ApplicationController

	def index
		e = Employee.all
		render json: {employees: e}, adapter: :json
		
	end

	def create
		e = Employee.new(e_params)

		if e.save
			render json: { status: 201, msg: 'New Employee added'}
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def show
		e = Employee.find(params[:id])
		render json: {employee: e}
		
	end

	def update
		e = Employee.find(params[:id])
		if e.update(e_params)
			render json: { status: 200, msg: 'Employee has been updated' }
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def destroy
		e = Employee.find(params[:id])
		if e.destroy
			render json: { status: 200, msg: 'Employee has been deleted' }
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def e_params
		params.require(:employee).permit(:id, :employee_id, :first_name, :last_name, :email, :phone_number, :hire_date, :job_id, :salary, :commision, :manager_id, :address)
	end
end
