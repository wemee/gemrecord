class Exercise < ApplicationRecord
  has_many :routine_exercise_ship
  has_many :routines, through: :routine_exercise_ship
  has_many :cets

  belongs_to :user
  belongs_to :category

end
