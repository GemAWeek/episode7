Omnisocial.setup do |config|

  # ==> Twitter
  config.twitter 'oA9qceKASC6bh6G3llARTQ', 'FPX2w393ZsaHjVVJhyPBuj6p1oXMKW80DDWUIGYYuw'

  # ==> Facebook
  # config.facebook 'APP_KEY', 'APP_SECRET', :scope => 'publish_stream'
  
  # ==> GitHub
  # config.github 'APP_KEY', 'APP_SECRET'
  
  # ==> LinkedIn
  # config.linked_in 'APP_KEY', 'APP_SECRET'

  if Rails.env.production?

    # Configs for production mode go here

  elsif Rails.env.development?

    # Configs for development mode go here

  end

end
