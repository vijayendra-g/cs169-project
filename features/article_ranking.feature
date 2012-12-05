#Checks that for a known set of articles, Drufus accounts for certain criteria correctly. Naturally imperfect, but trends should be visible.

Feature: search a medical term in Drufus

  As a doctor
  So that I can easily learn about a medical topic
  I want to search for a medical term in Drufus database 

Background: existing settings
  Given I am on the home page of "Drufus"

Scenario: In general, more recent articles appear before less recent ones, and articles with higher journal impact factors appear before those with lower ones.
  Given I plan to search for electroconvulsive obesity
  When I fill in "_search_term" with "electroconvulsive obesity"
  And I press "Search"
  Then I should see "2011" before "2002"
  And I should see "Journal of clinical anesthesia" before "General hospital psychiatry"
