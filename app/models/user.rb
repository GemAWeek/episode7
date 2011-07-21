class User < Omnisocial::User
  # Make any customisations here
  has_many :posts

  def twitter_account
    self.login_account(:type => 'Twitter')
  end

  def twitter_token
    twitter_account.access_token
  end

  def twitter_secret
    twitter_account.access_token_secret
  end
end

