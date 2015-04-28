Feature: Add element
  In order to manage files and folders
  As a User
  I want to add folder or upload file

  Background: Login
    Given I login as dropbox_valid_user

  @add_element @folder
  Scenario: Create folder
    When I create folder
    Then I should see new folder

  @add_element @event
  Scenario: Update event log
    When I create folder
    And I go to events_page
    Then I should see added folder event