Feature: Login
  In order to use dropbox service
  As a User
  I want to login the system

  @login
  Scenario: Login
    When I login as dropbox_valid_user
    Then I should be logged in