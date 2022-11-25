class List < ApplicationRecord
  has_many :bookmarks
  # validates_associated :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  # validates_associated :bookmarks
  validates :name, presence: true, uniqueness: true
  # destroy??
end
