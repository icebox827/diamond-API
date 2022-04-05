module Api
  module V1
    class ReqeustedServicesController < ApplicationController
      before_action :authenticate, only: %i[create]

      # Display all requested services
      def index
        @req_services = ReqeustedService.all, include: %i[user service]
        render json: @user.services
      end

      # Display a single requested service
      def show
        @req_service = ReqeustedService.find(params[:id])
        render json: @req_service
      end

      # Create service
      def create
        @req_service = @user.reqeusted_services.build(req_params)

        if @req_service.save
          render json: { message: 'Quotation created successfully' }, status: 200
        else
          render json: { error: @req_service.errors.full_messages }, status: 422
        end
      end

      # Update service
      def update
        @req_service = ReqeustedService.find(params[:id])

        if @req_service.update(req_params)
          render json: @req_service, status: :updated
        else
          render json: { error: @req_service.errors.full_messages }, status: 422
        end
      end

      # Destroy service
      def destroy
        @req_service = ReqeustedService.find(params[:id])

        if @req_service.destroy
          render json: { status: 'success' }
        else
          render json: { error: @req_service.errors.full_messages }, status: 422
        end
      end

      private
      # Requested Service Paramaters
      def req_params
        params.require(:reqeusted_service).permit(:service_id)
      end
    end
  end
end
