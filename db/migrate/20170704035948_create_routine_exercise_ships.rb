class CreateRoutineExerciseShips < ActiveRecord::Migration[5.1]
  def change
    create_table :routine_exercise_ships do |t|
      t.references :routine, foreign_key: true
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
