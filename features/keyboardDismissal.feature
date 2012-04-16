Feature: Keyboard dismisses on Done
    The keyboard should dismiss when the 'Done' button is pressed.
    
Scenario: Pressing Done dismisses the keyboard
    Given the app is running
        Then I should not see the keyboard
        Then I touch "First number"
        Then I should see the keyboard
        Then I touch done
        Then I should not see the keyboard
        