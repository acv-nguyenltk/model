require 'rails_helper'

RSpec.describe Image, type: :model do
  fields = ['order', 'headline', 'URL_image']
  describe 'Validations' do
    fields.each do |field|
      it { should validate_presence_of(field) }
    end
    it { should validate_numericality_of(:order).
      is_greater_than_or_equal_to(0) }
    it { should validate_numericality_of(:like_no).
      is_greater_than_or_equal_to(0) }
    it 'default_scope' do
      expect(Image.all.to_sql).to eq Image.all.order(order: :ASC).to_sql
    end
  end

  describe 'Associations' do
    it { should belong_to(:article)}
  end
end
