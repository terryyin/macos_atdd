require 'osaka'

Given(/^the caculator is started$/) do
  @calculator = Osaka::RemoteControl.new("Calculator")
  @calculator.activate
  @calculator.set_current_window(1)
end

Given(/^I input "([^"]*)"$/) do |key|
  button_index = {'1' => 6, '2' => 1, '+' => 13, '=' => 2}[key]
  @calculator.click!(at.button(button_index).group(2))
end

Given(/^then "([^"]*)"$/) do |key|
  step %{I input "#{key}"}
end

When(/^I press "([^"]*)"$/) do |key|
  step %{I input "#{key}"}
end

Then(/^I should see "([^"]*)" as the output$/) do |expectation|
  result = @calculator.get!('value', at.static_text(1).group(1))
  # please use a real assertion gem in your project
  raise "#{result} is not #{expectation}" unless result == expectation
end
