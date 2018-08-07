class Article < ApplicationRecord
  has_many :texts
  has_many :images
  validates :title, presence: true
  validates :like_no, presence: true, numericality: { greater_than_or_equal_to: 0 }
end