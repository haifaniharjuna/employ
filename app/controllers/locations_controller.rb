class LocationsController < ApplicationController
	def index
		l = Location.all
		render json: l , adapter: :json
		# render json: l, root: "Location" , adapter: :json
	end

	def create
		l = Location.new(l_params)

		if l.save
			render json: { status: 201, msg: 'New Location added'}
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def show
		l = Location.find(params[:id])
		render json: l
		
	end

	def update
		l = Location.find(params[:id])
		if l.update(l_params)
			render json: { status: 200, msg: 'Location has been updated' }
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def destroy
		l = Location.find(params[:id])
		if l.destroy
			render json: { status: 200, msg: 'Location has been deleted' }
		else
			render json: { result: false }, status: :unprocessable_entity
		end
		
	end

	def l_params
		params.require(:location).permit(:id, :street_address, :postal_code, :city, :state_province, :country_id, departements_attributes: [:id, :manager_id, :departement_name])
	end
end
