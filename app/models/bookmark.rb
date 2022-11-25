class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
  # validates :?? uniqueness: true
end


# resources :(name-contoller(plural) ,only: %i[index show new create]

# resources :lists, only: %i[index show new create]

rails generate model movies title:string overview:text poster_url:string rating:decimal
