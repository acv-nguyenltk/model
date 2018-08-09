class Image < ApplicationRecord
  belongs_to :article
  default_scope { order(order: :ASC) }
  validates :order, presence:true, uniqueness: true
  validates :like_no, numericality: { greater_than_or_equal_to: 0 }
  # before_create :generate_order
  #   def generate_order
  #     p1 = Image.last.try(:order)
  #     p2 = Text.last.try(:order)
  # 
  #     p1 ||= 0
  #     p2 ||= 0
  #
  #     p = p1 > p2 ? p1 : p2
  #     self.order = p + 1
  #   end


end
