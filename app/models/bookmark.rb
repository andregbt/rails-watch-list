class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
end


resources :(name-contoller(plural) ,only: %i[index show new create]

resources :lists, only: %i[index show new create]
