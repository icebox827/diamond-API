module Api
  module v1
    class AddressesController < ApplicationController
      before_action :autheticate, only: %i[create]
      # Display all addresses
      def index
        @addresses = Address.all
        render json: @addresses
      end

      # Display a songle address
      def show
        @address = Address.find(params[:id])
        render json: @address
      end

      # Create address
      def create
        @address = Address.new(address_params)

        if @address.save
          render json: { message: 'Address created successfully' }, status: 200
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      # Update address
      def update
        @address = Address.find(params[:id])

        if @address.save
          render json: { message: 'Address updated successfully' }, status: 200
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      # Address params
      def address_params
        params.permit(:apartement, :building, :street, :state, :country)
      end
    end
  end
end
