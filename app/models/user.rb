class User < ApplicationRecord
    has_many :workouts, dependent: :destroy 
    has_many :exercises, through: :workouts 
end
