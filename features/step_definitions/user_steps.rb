And /^Google authorizes me$/ do
  visit '/auth/google_oauth2/'
end

And /^Google doesn't authorize me$/ do
  OmniAuth.config.mock_auth[:google_oauth2] = :invalid_credentials
end
