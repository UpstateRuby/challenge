Then(/^I fill out the log in form$/) do
  @login_page.fill_out_form
end

Then(/^I have signed in successfully$/) do
  page.should have_content("Signed in successfully.")
end
