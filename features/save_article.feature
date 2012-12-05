Feature:

  As a doctor
  So that I can read an article at a later time
  I want to be able to save links to the articles that I liked

Background: existing settings
  Given I am on the home page of "Drufus"
  And I plan to search for headache
  When I follow "Sign in with Google"
  And Google authorizes me
  When I fill in "_search_term" with "headache"
  And I press "Search"

@omniauth_test
Scenario: save an article that I liked
  When I "save" the article "Application of acupuncture as a headache management tool."
  And I follow "Saved Articles"
  Then I should see "Application of acupuncture as a headache management tool."

@omniauth_test
Scenario: unsave an article in result page
  When I "save" the article "Application of acupuncture as a headache management tool."
  And I follow "Saved Articles"
  Then I should see "Application of acupuncture as a headache management tool."
  When I fill in "_search_term" with "headache"
  And I press "Search"
  Then the text of the button of "Application of acupuncture as a headache management tool." should be "Unsave Article"
  When I "unsave" the article "Application of acupuncture as a headache management tool."
  And I follow "Saved Articles"
  Then I should not see "Application of acupuncture as a headache management tool." 

@omniauth_test
Scenario: delete an article from saved articles
  When I "save" the article "Application of acupuncture as a headache management tool."
  And I follow "Saved Articles"
  Then I should see "Application of acupuncture as a headache management tool."
  When I "delete" the article "Application of acupuncture as a headache management tool."
  Then I should see "No saved articles."
