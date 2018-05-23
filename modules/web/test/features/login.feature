Feature: Login

  Scenario: An existing user can login into the system
    Given there is a user "admin" in the system
    When I log in as the user "admin" with password "admin"
    Then I am logged in and can navigate through the application
