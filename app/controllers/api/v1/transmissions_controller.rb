module Api
  module V1
    class TransmissionsController < ApplicationController\
      # Display all transmissions type
      def index
        @transmissions = Transmission.all
        render json: @tranmissions
      end

      # Create a transmission Type
      def create
        @transmission = Transmisison.new(trans_params)

        if @tranmission.save
          render json: { message: 'transmission created successfully' }, status: 200
        else 
          render json: { error: @tranmission.errors.full_messages }, status: 422
        end
      end

      # Transmission parameters
      def trans_params
        params.permit(:transmission_type, :abbreviation)
      end
    end
  end
end
