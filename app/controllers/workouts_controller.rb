class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
        render json: @workouts, include: [:exercises] 
    end

    def create
        @workout = Workout.create(workout_params)
        render json: @workout, include: [:exercises]  
    end

    def show
        @workout = Workout.find(params[:id])
        render json: @workout, include: [:exercises] 
    end

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        render json: @workout, include: [:exercises]  
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
        render json: {}, include: [:exercises] 
    end

    private
    
    def workout_params
        params.permit(:date, :length, :exercises)
    end

end
