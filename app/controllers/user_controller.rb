class UserController < ApplicationController
    before action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all 
        render json: @users
    end

    def show
        render json: @user
    end

    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user, status: :created, location: @user 
        else
            render json: @user.errors, status: :unproccessable_entity
        end
    end

    def destroy
        @user.destroy
    end

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :email, :parent, :location)
    end

end
