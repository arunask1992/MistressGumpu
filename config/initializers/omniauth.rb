Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '290519712742-1tudfbofs9rrcq2ggpb65on2m4dt1qd2.apps.googleusercontent.com', 'ItQL1GNRa-0wLvM3HnhBC-qD',
  scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online'
end