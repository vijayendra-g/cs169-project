Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '734788325949.apps.googleusercontent.com', 'J_2WW_Kxkor6jvO01WjT0km-'
  provider :identity
  end

