class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all
        render json: @workouts 
    end

    def create
        @workout = Workout.create(workout_params)
        render json: @workout 
    end

    def show
        @workout = Workout.find(params[:id])
        render json: @workout
    end

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        render json: @workout 
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
        render json: {}
    end

    private
    
    def workout_params
        params.permit(:date, :length)
    end

end
