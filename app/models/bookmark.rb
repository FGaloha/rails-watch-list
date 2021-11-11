class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  # validates :movie_id, uniqueness: { scope: :list }
  validates_uniqueness_of :list_id, :movie_id, scope: [:list_id, :movie_id]
end
