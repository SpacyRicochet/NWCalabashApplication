Feature: Keyboard dismisses on 'Done'
    The keyboard should dismiss when the 'Done' button is pressed.
    
    
Scenario: Example steps
    Given the app is running
        Then I touch "First number"
        Then I should not see "Compare"