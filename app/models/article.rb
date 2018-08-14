class Article < ApplicationRecord
  has_many :texts
  has_many :images
  validates :title, presence: true
  validates :like_no, numericality: { greater_than_or_equal_to: 0 }

  def published?
    self.publish_at.present? && publish_at < Time.now
  end

end
