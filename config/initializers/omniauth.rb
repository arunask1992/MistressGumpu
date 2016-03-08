Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '39437020531-tgcpd13vn7fmkscfled5o38id9bgbbso.apps.googleusercontent.com', 'C4chIlQ5_m0NEcmOxm9YCBfD',
  scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online'
end