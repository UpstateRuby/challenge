Given(/^I am on the sign up screen$/) do
  visit new_user_registration_path
end

When(/^I click the (.*?) button$/) do |link_name|
  click_on link_name
end

When(/^I fill out the Sign up form$/) do
  fill_in "Email", with: "test@example.test"
  fill_in "Password", with: "password"
  fill_in "Password confirmation", with: "password"
end

Then(/^I should see the (.*?) button$/) do |link_name|
  expect(page).to have_content(link_name)
end

Then(/^I should see the sign up form$/) do
  page.has_content?("Sign Up")
  page.has_field?("Password Confirmation")
end
