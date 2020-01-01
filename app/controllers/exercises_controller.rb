class ExercisesController < ApplicationController

    def index
        @exercises = Exercise.all
        render json: @exercises
    end

    def create
        @exercise = Exercise.create(exercise_params)
        render json: @exercise 
    end

    def show
        @exercise = Exercise.find(params[:id])
        render json: @exercise
    end

    def update
        @exercise = Exercise.find(params[:id])
        @exercise.update(exercise_params)
        render json: @exercise 
    end

    def destroy
        @exercise = Exercise.find(params[:id])
        @exercise.destroy
        render json: {}
    end

    private
    
    def exercise_params
        params.permit(:name, :weight_used, :reps, :sets, :workout_id)
    end

end
