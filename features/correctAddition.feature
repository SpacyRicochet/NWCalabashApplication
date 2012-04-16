Feature: Perform addition of two numbers
    The calculator should perform correct addition of two numbers.
    
Scenario: Adding 2 and 5 should give 7
    Given the app is running
        Then I fill in "Enter first number" with "2"
        Then I fill in "Enter second number" with "5"
        Then I press "Calculate"
        Then I wait
        Then I should see "7"
        