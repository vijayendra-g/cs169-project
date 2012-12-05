Feature: search a medical term in Drufus

  As a doctor
  So that I can easily learn about a medical topic
  I want to search for a medical term in Drufus database 

Background: existing settings
  Given I am on the home page of "Drufus"

Scenario: search for term (happy path)
  Given I plan to search for electroconvulsive obesity
  When I fill in "_search_term" with "electroconvulsive obesity"
  And I press "Search"
  Then I should see "electroconvulsive"

Scenario: search for empty term (sad path)
  When I press "Search"
  Then I should see "Please input a search term"

Scenario: search for term with no results (sad path)
  Given I plan to make a search that has no results
  When I fill in "_search_term" with "vknskdvndsnknvskdvnkndvk"
  And I press "Search"
  Then I should not see "vknskdvndsnknvskdvnkndvk"


Scenario: search terms carry over to the result page
  Given I plan to search for headache
  When I fill in "_search_term" with "headache"
  And I press "Search"
  Then the "_search_term" field should contain "headache"
