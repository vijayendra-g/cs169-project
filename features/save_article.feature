Feature:

  As a doctor
  So that I can read an article at a later time
  I want to be able to save links to the articles that I liked

Background: existing settings
  Given I am on the home page of "Drufus"
  When I follow "Sign in with Google"
  And Google authorizes me
  When I fill in "_search_term" with "headache"
  And I press "Search"

@omniauth_test
Scenario: save an article that I liked
  When I follow "0"
  Then I should see "headache"

