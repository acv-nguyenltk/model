class Image < ApplicationRecord
  belong_to :article
  validates :order, presence:true, uniqueness: true
  validates :like_no, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
