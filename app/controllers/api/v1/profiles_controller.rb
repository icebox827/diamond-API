module Api
  module V1
    class ProfilesController < ApplicationController
      before_action :authenticate, only: %i[index create]

      # Display all profiles
      def index
        @profiles = @user.profile.all
        render json: @profiles
      end

      # Display a single profile
      def show
        @profile = @user.profile.find(params[:id])
      end

      # Create a profile
      def create
        @profile = @user.profile.build(profile_params)

        if @profile.save
          render json: @profile, status: :created
        else
          render json: { error: @profile.errors.full_messages }, status: 422
        end
      end

      # Update a profile
      def update
        @profile = @user.profile.find(params[:id])

        if @profile.update(profile_params)
          render json: @profile, status: :updated
        else
          render json: { error: @profile.errors.full_messages }, status: 422
        end
      end

      # Delete a profile
      def destroy
        @profile = @user.profile.find(params[:id])

        if @profile.destroy
          render json: { status: 'success' }
        else
          render json: { error: @profile.errors.full_messages }, status: 422
        end
      end

      private 
      # Get user id
      def get_user
        @user = User,find(params[:user_id])
      end

      # Set parameters for profile
      def profile_params
        params.permit(:street, :city, :state, :zip, :country, :phone, :user_id)
      end
    end
  end
end
