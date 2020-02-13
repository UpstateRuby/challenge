Feature: Log In
  In order to use the application
  As a user
  I need to log in

  Background:
    Given There is a test user

  Scenario: Navigate to the Log in Form
    Given I am on the login screen
    Then I fill out the log in form
    When I click the Log in button
    Then I have signed in successfully
