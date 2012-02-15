Given /^I am on the homepage$/ do
  visit root_path
end

Then /^I should see "([^"]*)" within "([^"]*)"$/ do |content, element|
  within(element) do
    page.should have_content(content)
  end
end

When /^I click the "([^"]*)" link$/ do |link|
  click_link link
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field, :with => value
end

When /^I press "([^"]*)"$/ do |button|
  click_button button
end

Then /^I should see "([^"]*)"$/ do |content|
  page.should have_content(content)
end

Then /^I should not see "([^"]*)"$/ do |content|
  page.should_not have_content(content)
end

When /^show me$/ do
  save_and_open_page
end

When /^I select "([^"]*)" from "([^"]*)"$/ do |option, selectbox|
  select(option, from: selectbox )
end
