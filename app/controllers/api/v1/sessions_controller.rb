class Api::V1::SessionsController < ApplicationController
    def login
        @user = User.where(full_name: params[:full_name], email: params[:email], password: params[:password]).first
    
      if @user
        session[:user_id] = @user.id
        render json: { success: true, user_id: @user.id, user_name: @user.full_name }, status: :ok
      else
        render json: { success: false, error: 'Invalid username or password' }, status: :unprocessable_entity
      end
    end
  end