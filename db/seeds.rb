
u1 = User.create(name: "Ken", age: 29, height: 68, weight: 160, bodyfat: 10)
u2 = User.create(name: "Ryu", age: 27, height: 72, weight: 190, bodyfat: 5)


w1 = Workout.create(date: 10112020, length: 90, user: u1)
w2 = Workout.create(date: 10192020, length: 60, user: u2)
w3 = Workout.create(date: 11122020, length: 90, user: u1)
w4 = Workout.create(date: 12182020, length: 30, user: u2)
w5 = Workout.create(date: 12132020, length: 30, user: u1)


e1 = Exercise.create(name: "Power Clean", weight_used: 135, reps: 5, sets: 5, workout: w1)
e2 = Exercise.create(name: "Deadlift", weight_used: 315, reps: 5, sets: 5, workout: w1)
e3 = Exercise.create(name: "Overhead Press", weight_used: 135, reps: 5, sets: 5, workout: w1) 




e4 = Exercise.create(name: "Bench Press", weight_used: 315, reps: 5, sets: 5, workout: w2)
e5 = Exercise.create(name: "Barbell Row", weight_used: 225, reps: 5, sets: 5, workout: w2)
e6 = Exercise.create(name: "Front Squat", weight_used: 405, reps: 5, sets: 5, workout: w2) 
e7 = Exercise.create(name: "Jump Squat", weight_used: 315, reps: 5, sets: 5, workout: w3)
e8 = Exercise.create(name: "Land Mine Press", weight_used: 225, reps: 5, sets: 5, workout: w3)
e9 = Exercise.create(name: "Dumbbell Row", weight_used: 100, reps: 5, sets: 5, workout: w4) 
e10 = Exercise.create(name: "Calf Raise", weight_used: 315, reps: 5, sets: 5, workout: w4)
e11 = Exercise.create(name: "Snatch", weight_used: 225, reps: 5, sets: 5, workout: w5)
e12 = Exercise.create(name: "Clean & Jerk", weight_used: 405, reps: 5, sets: 5, workout: w5) 