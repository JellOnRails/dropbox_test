Feature: Edit element
  In order to manage files and folders
  As a User
  I want to edit items on page

  Background: Login
    Given I login as dropbox_valid_user

  @edit_element @folder
  Scenario: Create folder
    When I create folder
    Then I should see new folder

  @edit_element @event
  Scenario: Update event log
    When I create folder
    And I go to events_page
    Then I should see added folder event