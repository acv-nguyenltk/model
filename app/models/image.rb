class Image < ApplicationRecord
  belongs_to :article
  default_scope { order(order: :ASC) }
  validates :order, :headline, :URL_image, presence: true
  validates :like_no, :order, numericality: { greater_than_or_equal_to: 0 }
end
