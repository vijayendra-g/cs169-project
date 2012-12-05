Feature:

    As a doctor
    So that I don’t need to re-enter my preferences every time I use Drufus
    I want to save my preferences in Drufus database

Background:
    Given I am on the home page of "Drufus"
    When I follow "Sign in with Google"
    And Google authorizes me

@omniauth_test
Scenario:
    When I select "Add Filter"
    Then I should see "Filter Options"
    And I select "Anasthesia"
    When I search "headache"
    And I am on the home page of "Drufus"
    Then I should see "Anasthesia selected"
