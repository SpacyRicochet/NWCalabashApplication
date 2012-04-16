require 'calabash-cucumber/calabash_steps'

Then /^I should see the keyboard$/ do
  res = element_exists( "keyboardAutomatic" )
  if not res
    screenshot_and_raise "Expected keyboard to be visible."
  end
end

Then /^I should not see the keyboard$/ do
  res = element_exists( "keyboardAutomatic" )
  if res
    screenshot_and_raise "Expected keyboard to not be visible."
  end
end

