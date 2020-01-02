class UsersController < ApplicationController
    # before_action :require_login

    def index
        @users = User.all
        render json: @users, include: [:workouts] 
    end

    def create
        @user = User.create(user_params)
        render json: @user, include: [:workouts] 
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: [:workouts] 
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user, include: [:workouts]  
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {}, include: [:workouts] 
    end

    private
    
    def user_params
        params.permit(:name, :age, :height, :weight, :bodyfat, :workouts)
    end

end
