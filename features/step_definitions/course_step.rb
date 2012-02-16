Then /^I should be on the course page for "([^"]*)"$/ do |course_title|
  visit course_path(Course.find_by_title!(course_title))
end

Given /^there are the following courses:$/ do |table|
  table.hashes.each do |attributes|
    attributes[:released] = 1.day.ago if attributes[:released] == "Yesterday"
    @course = Course.create!(attributes)
  end
end

When /^I visit courses page$/ do
  visit courses_path
end

Then /^"([^"]*)" should appear before "([^"]*)"$/ do |new_item, old_item|
  page.body.should =~ /#{new_item}.*#{old_item}/m
end

Then /^I should see "([^"]*)" tag for "([^"]*)" within "([^"]*)"$/ do |tag, title, element|
  within(element) do
    page.should have_content(title)

    within(".label")do
      page.should have_content(tag)
    end
  end
end
