class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      render json @user, status: :created, location: @book

    else
      render json @user.errors, status: :unprocessable_entry
    end

  end

  private
    def user_params
      params.permit(:username, :password)
    end

end