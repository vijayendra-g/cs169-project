Feature: search a medical term in Drufus

  As a doctor
  So that I can easily learn about a medical topic
  I want to search for a medical term in Drufus database 

Background: existing settings
  Given I am on the home page of "Drufus"

Scenario: More relevant articles show before less relevant ones
  When I fill in "_search_term" with "laryngospasm"
  And I press "Search"
  Then I should see "Laryngospasm and hypoxia after intramuscular administration of ketamine to a patient in excited delirium." before "Sodium azide-associated laryngospasm after air bag deployment."
