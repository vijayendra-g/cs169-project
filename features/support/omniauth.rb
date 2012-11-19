Before('@omniauth_test') do
  OmniAuth.config.test_mode = true

  # the symbol passed to mock_auth is the same as the name of the provider set up in the initializer
  OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
      "provider"=>"google_oauth2",
      "uid"=>"http://xxxx.com/openid?id=118181138998978630963",
      "info"=>{"email"=>"test@xxxx.com", "first_name"=>"Test", "last_name"=>"User", "name"=>"Test User"}
  })
end

Before('@omniauth_fail') do
  OmniAuth.config.test_mode = true
end

After('@omniauth_test') do
  OmniAuth.config.test_mode = false
end

After('@omniauth_fail') do
  OmniAuth.config.test_mode = false
end
