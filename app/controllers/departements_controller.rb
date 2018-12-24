class DepartementsController < ApplicationController
	def index
		e = Departement.all
		render json: e, adapter: :json
		# render json: e, root: "Departement", adapter: :json
	end

	def create
		e = Departement.new(e_params)

		if e.save
			render json: { status: 201, msg: 'New Departement added'}
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def show
		e = Departement.find(params[:id])
		render json: e
		
	end

	def update
		e = Departement.find(params[:id])
		if e.update(e_params)
			render json: { status: 200, msg: 'Departement has been updated' }
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def destroy
		e = Departement.find(params[:id])
		if e.destroy
			render json: { status: 200, msg: 'Departement has been deleted' }
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def e_params
		params.require(:departement).permit(:departement_name, :manager_id, employees_attributes: [ :id, :employee_id, :first_name, :last_name, :email, :phone_number, :hire_date, :job_id, :salary, :commision, :manager_id, :address])
	end
end
