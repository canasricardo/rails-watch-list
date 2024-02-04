class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :list_id, uniqueness: { scope: :movie_id, message: "Bookmark already exists for this list and movie combination" }
  validates :comment, presence: true, length: { minimum: 6 }
end
