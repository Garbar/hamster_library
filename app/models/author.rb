class Author < ApplicationRecord
  has_many :author_stories
  has_many :stories, through: :author_stories
  validates :title, presence: true
end
