# Author: Murat Dulger

@RegressionTests
@Regression_LoginPage
Feature: Login Test

  @RegressionTests_LoginPositiveTest
  Scenario: Login Positive Test
    Given Generic: I see the page title with name: "Swag Labs"
    When Login Page: I enter the username/password: "username" with: "standard_user"
    And Login Page: I enter the username/password: "password" with: "secret_sauce"
    Then Login Page: I click on the Login button
    And Login Page: I verify if the app logo appears on the home page
    When Login Page: I logout from the application
    And Generic: I see the page title with name: "Swag Labs"


  @RegressionTests_LoginNegativeTest
  Scenario: Login Negative Test
    Given Generic: I see the page title with name: "Swag Labs"
    When Login Page: I enter the username/password: "username" with: "standard_user"
    And Login Page: I enter the username/password: "password" with: "admin12"
    Then Login Page: I click on the Login button
    And Login Page: I verify the error message with: "Epic sadface: Username and password do not match any user in this service"


  @RegressionTests_LoginlockedoutTest
  Scenario: Login locked_out Test
    Given Generic: I see the page title with name: "Swag Labs"
    When Login Page: I enter the username/password: "username" with: "locked_out_user"
    And Login Page: I enter the username/password: "password" with: "secret_sauce"
    Then Login Page: I click on the Login button
    And Login Page: I verify the error message with: "Epic sadface: Sorry, this user has been locked out."