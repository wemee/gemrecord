class Category < ApplicationRecord
  belongs_to :user

  has_many :exercises

  # default_scope -> { select(:id, :name, :user) }
end
