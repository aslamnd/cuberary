Then /^I should be on the course page for "([^"]*)"$/ do |course_title|
  visit course_path(Course.find_by_title!(course_title))
end
