module Api
  module V1
    class AuthenticationController < ApplicationController
      # Initiate authentication
      def create
        @user = User.find_by(email: params[:email])

        if !@user
          render json: { error: 'Invalid email or password' }, status: 403
        elsif @user.authenticate(params[:password])
          secret_key = ENV['SECRET_KEY']
          token = JWT.encode({ user_id: @user.id, email: @user.email }, secret_key)

          render json: { token: token, first_name: @user.first_name }, status: 200
        else
          render json: { error: 'Invalid email or password' }, status: 403
        end
      end
    end
  end
end
