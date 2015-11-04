require 'cucumber/rspec/doubles'

Then(/^I should see a "([^"]*)" button$/) do |arg1|
  expect(page).to have_button arg1
end

Given(/^the game will randomly play "([^"]*)"$/) do |arg1|
  Game.any_instance.stub(:last_computer_move) { "#{arg1}" }
end
