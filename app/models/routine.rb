class Routine < ApplicationRecord
  belongs_to :user

  has_many :routine_exercise_ship
  has_many :exercises, through: :routine_exercise_ship
end
