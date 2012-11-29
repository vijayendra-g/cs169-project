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
  When I follow "article1"
  Then the text of "article1" should be "Unsave Article"
  When I follow "Saved Articles"
  Then I should see "article1"


@omniauth_test
Scenario: unsave article
  When I follow "article1"
  And I follow "Saved Articles"
  Then I should see "article1"
  When I fill in "_search_term" with "headache"
  And I press "Search"
  Then the text of "article1" should be "Unsave Article"
  When I follow "article1"
  Then the text of "article1" should be "Save Article"
  When I follow "Saved Articles"
  Then I should see "No saved articles."

@omniauth_test
Scenario: delete an article from saved articles
  When I follow "article1"
  And I follow "Saved Articles"
  Then I should see "article1"
  When I follow "article1"
  Then I should see "No saved articles."

