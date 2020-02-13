require 'rails_helper'

feature 'Log In' do
  background do
    create(:user, email: 'test@example.test')
  end
  scenario 'with valid email and password' do
    log_in_with 'test@example.test', 'password'

    expect(page).to have_content('Signed in successfully')
  end

  scenario 'with invalid email' do
    log_in_with 'invalid_email', 'password'

    expect(page).to have_content('Invalid')
  end

  scenario 'with blank password' do
    log_in_with 'test@example.test', ''

    expect(page).to have_content('Invalid')
  end

  def log_in_with(email, password)
    login_page = LoginPage.new
    login_page.visit_login_page
    login_page.fill_out_form(email, password)
    login_page.submit
  end
end
