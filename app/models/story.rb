class Story < ApplicationRecord
  belongs_to :user
  has_many :author_stories
  has_many :authors, through: :author_stories
  has_many :famdom_stories
  has_many :famdoms, through: :famdom_stories
  validates :title, presence: true
  validates :description, presence: true
end
