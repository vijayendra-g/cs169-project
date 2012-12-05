Feature:

    As a doctor
    So that I don’t need to re-enter my preferences every time I use Drufus
    I want to save my preferences in Drufus database

Background:
    Given I am on the home page of "Drufus"
    When I follow "Sign in with Google"
    And Google authorizes me

@omniauth_test
Scenario: Adding a Search Preference
    When I follow "Search Preference"
    Then I should see "Input your preference here:"
    When I fill in "_preference" with "headache"
    And press "Save Preference"
    Then the "_preference" field should contain "headache"
