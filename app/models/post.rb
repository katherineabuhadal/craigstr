class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true

  def mark_as_spam
    spam = true
  end
end
