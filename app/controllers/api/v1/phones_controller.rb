module Api
	module V1
		class PhonesController < ApplicationController
			before_action :authenticate, only: %i[create]

			# Display all phones
			def index
				@phones = Phone.all
				render json: @phones
			end

			# Display a single phones
			def show
				@phones = Phone.find(params[:id])
				render json: @phone
			end

			# Create phone
			def create
				@phone = @user.phones.build(phone_params)

				if @phone.save
					render json: @phone, status: :created
				else
					render json: { error: @phone.errors.full_messages }, status: 422
				end
			end

			# Update phone
			def update
				@phone = Phone.find(params[:id])

				if @phone.update(phone_params)
					render json: @phone, status: :updated
				else
					render json: { error: @phone.errors.full_messages }, status: 422
				end
			end

			def destroy
				@phone. Phone.find(params[:id])

				if @phone.destroy
					render json: { status: 'success' }
				else
					render json: { error: @phone.errors.full_messages }, status: 422
				end
			end

			private
			# Phone parameters
			def phone_params
				params.require(:phone).permit(:primary)
			end
		end
	end
end
