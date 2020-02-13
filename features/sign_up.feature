Feature: Sign Up
  In order to use the application
  As a user
  I need to sign up

  Scenario: Navigate to the Sign up Form
    Given I am on the login screen
    Then I should see the Sign up button
    When I click the Sign up button
    Then I should see the sign up form

  Scenario: Submit the Sign up form
    Given I am on the sign up screen
    Then I should see the sign up form
    When I fill out the Sign up form
    When I click the Sign up button
    Then I see the welcome message
