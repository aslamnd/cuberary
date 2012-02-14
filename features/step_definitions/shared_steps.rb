Given /^I am on the homepage$/ do
  visit root_path
end

Then /^I should see "([^"]*)" within "([^"]*)"$/ do |content, element|
  within(element) do
    page.should have_content(content)
  end
end
