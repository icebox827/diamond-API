class Api 
  module V1
    class UsersController < ApplicationController
      # Display all users in json format
      def index
        @users = User.all
        render json: @users
      end

      # Display a single user in json format
      def show
        @user = User.find(params[:id])
        render json: @user
      end

      # Create a user and render json format
      def create
        @user = User.new(user_params)

        if @user.save
          render json: { message: 'User created successfully' }, status: 200
        else
          render json: { error: @user.error_full_message }, status: 422
        end
      end

      # Update a single user and render json format
      def update
        @user = User.find(params[:id])

        if @user.update
          render json: { message: 'User created successfully' }, status: 200
        else
          render json: { error: @user.error_full_message }, status: 422
      end

      private
      # User parameters
      def user_params
        params.permit(:first_name, :last_name, :email, :password)
      end
    end
  end
end
