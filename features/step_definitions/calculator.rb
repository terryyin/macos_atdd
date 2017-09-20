require 'osaka'


Given(/^the caculator is started$/) do
  @calculator = Osaka::RemoteControl.new("Calculator")
  @calculator.activate
end

Given(/^I input "([^"]*)"$/) do |arg1|
  @calculator.click!(at.button("1").group(2))
  @calculator.click!(at.button("+").group(2))
  @calculator.click!(at.button("4").group(2))
  @calculator.click!(at.button("=").group(2))
end

Given(/^then "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)" as the output$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
