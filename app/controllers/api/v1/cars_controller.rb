module Api
  module V1
    class CarsController < ApplicationController
      before_action :authenticate, only: %i[create]

      # Display all the cars
      def index
        @cars = Car.all
        render json: @cars
      end

      # Display a single car
      def show
        @car = Car.find(params[:id])
        render json: @Car
      end

      # Create car
      def create
        @car = @user.cars.build(car_params)

        if @car.save
          render json: @car, status: :created
        else
          render json: { error: @car.errors.full_messages }, status: 422
        end
      end

      # Update car
      def update
        @car = Car.find(params[:id])

        if @Car.update(car_params)
          render json: @car, status: :updated
        else
          render { error: @car.errors.full_messages }, status: 422
        end
      end

      # Destroy car
      def destroy
        @car = Car.find(params[:id])

        if @car.destroy
          render json: { status: 'success' }
        else
          render json: { error: @car.errors.full_messages }, status: 422
        end
      end

      private
      # Car parameters
      def car_params
        params.require(:car).permit(:make, :model, :year, :color, :seats)
      end
    end
  end
end
