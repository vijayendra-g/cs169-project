Feature: search a medical term in Drufus

  As a doctor
  So that I can easily learn about a medical topic
  I want to search for a medical term in Drufus database 

Background: existing settings

Scenario: search term (happy path)
  Given I am on the home page of "Drufus"
  When I fill in "Search Term" with "bullshit"
  And I press "Search"
  Then there should be 2 results

#Scenario: search term in title (happy path)
#  Given I am on the home page of "Drufus"
#  When I fill in "Search Term" with "mumps"
#  And I press "Search"
#  Then all results should have "mumps" in the title

#Scenario: search term in title (sad path)
#  Given I am on the home page of "Drufus"
#  When I fill in "Search Term" with "vknskdvndsnknvskdvnkndvk"
#  And I press "Search"
#  Then there should be no results
