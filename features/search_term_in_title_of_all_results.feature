Feature: search a medical term in Drufus

  As a doctor
  So that I can easily learn about a medical topic
  I want to search for a medical term in Drufus database 

Background: existing settings
  Given I am on the home page of "Drufus"

Scenario: search for term (happy path)
  When I fill in "_search_term" with "laryngospasm"
  And I press "Search"
  Then I should see "laryngospasm"

Scenario: search for term with no results (sad path)
  When I fill in "_search_term" with "vknskdvndsnknvskdvnkndvk"
  And I press "Search"
  Then I should not see "vknskdvndsnknvskdvnkndvk"


Scenario: search terms carry over to the result page
  When I fill in "_search_term" with "headache"
  And I press "Search"
  Then the "_search_term" field should contain "headache"
