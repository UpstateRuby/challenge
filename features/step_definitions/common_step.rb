Then(/^I see the welcome message$/) do
  page.should have_content("Welcome! You have signed up successfully.")
end

Given(/^I am on the login screen$/) do
  @login_page = LoginPage.new
  @login_page.visit_login_page
end

Given(/^There is a test user$/) do
  FactoryBot.create(:user, email: 'test@example.test')
end

