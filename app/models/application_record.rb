class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def increment_like
    self.like_no += 1
    save
  end
end
