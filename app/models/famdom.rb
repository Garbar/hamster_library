class Famdom < ApplicationRecord
  has_many :famdom_stories
  has_many :stories, through: :famdom_stories
  validates :title, presence: true
end
