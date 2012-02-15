Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
    unconfirmed = attributes.delete("unconfirmed") == "true"
    @user = User.create!(attributes)
    @user.confirm! unless unconfirmed
  end
end

Given /^I signed in as them$/ do
  steps(%Q{
    Given I am on the homepage
    When I click the "Sign in" link
    And I fill in "Email" with "#{@user.email}"
    And I fill in "Password" with "#{@user.password}"
    And I press "Sign in"
    Then I should see "Signed in successfully."
  })
end

Given /^I am not authenticated$/ do
  visit destroy_user_session_path
end

Given /^I signed in as "([^"]*)"$/ do |email|
  @user = User.find_by_email!(email)
  @user.password = "password"
  steps("Given I signed in as them")
end
