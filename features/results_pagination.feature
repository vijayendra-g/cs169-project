Feature: pagination for the result page

  As a doctor
  So that I can view 10 result articles per page
  I want to have pagination for the results 

Background: existing settings
  Given I am on the home page of "Drufus"

Scenario: search for term that have results across pages (happy path)
  When I fill in "_search_term" with "headache"
  And I press "Search"
  Then the current page should be "1"
  When I press "Next"
  Then the current page should be "2"
  When I press "Prev"
  Then the current page should be "1"

Scenario: search for term with no results (sad path)
  When I fill in "_search_term" with "vknskdvndsnknvskdvnkndvk"
  And I press "Search"
  Then I should not see "vknskdvndsnknvskdvnkndvk"
  Then I should see "No results found."

