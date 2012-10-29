# Functionality not implemented yet
#Feature: search a medical term in Drufus
#
#  As a doctor
#  So that I can easily learn about a medical topic
#  I want to search for a medical term in Drufus database
#
#Background: existing settings
#
#  Given the following are in "brand-name institutions": The New England Journal of #Medicine, Yale
#
#Scenario: search for medical articles from brand-name institutions
#  Given I am on the home page of "Drufus"
#  When I fill in "Search Term" with "mumps"
#  And I check "brand-name institution"
#  And I press "Search"
#  Then all results should have field "institution" in "brand-name institutions"
