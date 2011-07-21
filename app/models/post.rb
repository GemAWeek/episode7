class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :body, :presence => true
  scope :descending_date, order('created_at desc')
  before_save :shorten_url

  def shorten_url
    Bitly.use_api_version_3
    bitly = Bitly.new('gemaweek', 'R_e2831ec087e0ede17c18da63f626ec79')
    short_url = bitly.shorten("http://smackaho.st:3000/posts/#{self.id}")
    self.short_url = short_url.short_url
  end
end

