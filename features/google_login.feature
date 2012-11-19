#functionality not yet implemented
Feature: Customizing search queries in Drufus

  As a doctor
  So that I can specify my search query parameters
  I want to customize my search queries in Drufus

Background: existing settings
  Given I am on the home page of "Drufus"

@omniauth_test
Scenario: successful user login (happy path)
  When I follow "Sign in with Google"
  And Google authorizes me
  Then I should see "Welcome, Test User!"
  And I should see "Signed in!"
  When I follow "Sign Out"
  Then I should not see "Welcome, Test User!"
  And I should see "Signed out!"

@omniauth_fail
Scenario: failed user login (sad path)
  When I follow "Sign in with Google"
  And Google doesn't authorize me
  Then I should see "Sign in with Google"
