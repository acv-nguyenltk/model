require 'rails_helper'

RSpec.describe Article, type: :model do
  before(:each) do
    @article = Article.create(title: 'RspecTest', like_no: 3)
  end
  describe 'Validations' do
    it { should validate_presence_of(:title)}
    it { should validate_numericality_of(:like_no).
      is_greater_than_or_equal_to(0) }
    it 'published?' do
      expect(@article.published?).to eq false
    end
  end

  describe 'Associations' do
    it { should have_many(:texts) }
    it { should have_many(:images) }
  end
end
