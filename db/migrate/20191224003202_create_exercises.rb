class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.integer :weight_used
      t.integer :reps
      t.integer :sets
      t.string :name

      t.belongs_to :workout, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
