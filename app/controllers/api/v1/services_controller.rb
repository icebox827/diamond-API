module Api
  module V1
    class ServicesController < ApplicationController
      before_action :authenticate, only: %i[create]
      # Display all services
      def index
        @services = Service.all
        render json: @services
      end

      # Create services
      def create
        @service = Service.new(service_params)

        if @service.save
          render json: { messages: 'Service created successfully' }, status: 200
        else
          render json: { error: @service.errors.full_messages }, status: 422
        end
      end

      # Update service
      def update
        @service = Service.find(params[:id])

        if @service.update
          render json: { message: 'Service update successfully' }, status: 200
        else
          render json: { error: @service.errors.full_messages }, status: 422
        end
      end

      # Service parameters
      def service_params
        params.permit(:service)
      end
    end
  end
end
