Feature: Welcome page

Background:
Given I visit the root path

Scenario: The welcome page should be accessible
Then I should receive a 200 response code

Scenario: The page should have the main title
Then the page should have content "Functional Imperative's Information Page for AirMiles LoyaltyOne"

Scenario: The page should have a calculator form
Then the page should have content "Simple Calculator"
  And the page should have the button 'Add'

Scenario: The page should add two numbers properly
When I fill in left with: 1
  And I fill in right with: 2
When I click the button 'Add'
Then I should receive a 200 response code
  And the page should have content "The answer is 3"
