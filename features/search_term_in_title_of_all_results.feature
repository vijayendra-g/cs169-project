Feature: search a medical term in Drufus

  As a doctor
  So that I can easily learn about a medical topic
  I want to search for a medical term in Drufus database 

Background: existing settings
  Given I am on the home page of "Drufus"

Scenario: search for term (happy path)
  When I fill in "_search_term" with "mumps"
  And I press "Search"
  Then I should see "mumps"

Scenario: search for term with no results (sad path)
  When I fill in "_search_term" with "vknskdvndsnknvskdvnkndvk"
  And I press "Search"
  Then I should not see "vknskdvndsnknvskdvnkndvk"
