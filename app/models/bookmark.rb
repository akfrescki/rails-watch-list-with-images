class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6, maximum: 500 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "has already been added to this list" }
end
