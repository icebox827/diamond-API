module Api
  module v1
    class AddressesController < ApplicationController
      before_action :autheticate, only: %i[create]

      # Display all addresses
      def index
        @addresses = @user.addresses
        render json: @addresses
      end

      # Display a single address
      def show
        @address = current_user.addresses.find(params[:id])
        render json: @address
      end

      # Create address
      def create
        @address = current_user.addresses.build(address_params)

        if @address.save
          render json: { message: 'Address created successfully' }, status: 200
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      # Update address
      def update
        @address = current_user.addresses.find(params[:id])

        if @address.update(address_params)
          render json: { message: 'Address updated successfully' }, status: 200
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      private 

      # Address params
      def address_params
        params.permit(:street, :state, :country, :user_id)
      end
    end
  end
end
