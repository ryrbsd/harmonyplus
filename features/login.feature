Feature: Logging into the website works
 
  As an existing moderator
  So that I can access the database
  I want to administrate and handle the forms and database

Background: 
  Given the following user exist:
  | email                   | password     |
  | firstuser@gmail.com     | hs1l3498174  |

  And I am on the login page

Scenario: Able to log in
  # I am logged in as "admin" with password "admin"
  # Then I should see "database"
  
  