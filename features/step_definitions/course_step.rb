Then /^I should be on the course page for "([^"]*)"$/ do |course_title|
  visit course_path(Course.find_by_title!(course_title))
end

Given /^there are the following courses:$/ do |table|
  table.hashes.each do |attributes|
    @course = Course.create!(attributes)
  end
end

When /^I visit courses page$/ do
  visit courses_path
end
