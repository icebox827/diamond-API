module Api
  module V1
    class AddressesController < ApplicationController
      before_action :authenticate, only: %i[create index]
      before_action :get_user

      # Display all addresses
      def index
        @addresses = @user.address
        render json: @addresses
      end

      # Display a single address
      def show
        @address = @user.address.find(params[:id])
        render json: @address
      end

      # Create address
      def create
        @address = @user.address.build(address_params)

        if @address.save
          render json: @address, status: :created
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      # Update address
      def update
        @address = @user.address.find(params[:id])

        if @address.update(address_params)
          render json: { message: 'Address updated successfully' }, status: 200
        else
          render json: { error: @address.errors.full_messages }, status: 422
        end
      end

      private 
      # Get current user
      def get_user
        @user = User.find(params[:user_id])
      end

      # Address params
      def address_params
        params.require(:address).permit(:street, :city, :state, :zip, :country, :user_id)
      end
    end
  end
end
