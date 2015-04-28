Feature: Navigation
  In order to have convenient access to all pages
  As a User
  I want to use buttons for navigation

  Background: Login
    Given I login as dropbox_valid_user

# next scenario I have implemented in two ways:
#  1. as a scenario outline which makes run same scenario for each parameter ( button - page )
#  2. as a solid scenario where we have steps and checks for each page. it makes time for running shorter

  @navigation @sidebar
  Scenario Outline: Sidebar buttons
    When I click on <those> button
    Then I should see <this> page

    Examples: Pages
      |     those          |   this           |
      | files_button       | home_page        |
      | photos_button      | photos_page      |
      | sharing_button     | share_page       |
      | links_button       | links_page       |
      | events_button      | events_page      |
      | get_started_button | get_started_page |

  @navigation @sidebar_fast
  Scenario: Sidebar buttons
    When I click on photos_button button
    Then I should see photos_page page
    When I click on sharing_button button
    Then I should see share_page page
    When I click on links_button button
    Then I should see links_page page
    When I click on events_button button
    Then I should see events_page page
    When I click on get_started_button button
    Then I should see get_started_page page
    When I click on files_button button
    Then I should see home_page page