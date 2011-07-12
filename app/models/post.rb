class Post < ActiveRecord::Base
  validates :title, :body, :presence => true
  scope :descending_date, order('created_at desc')
end
