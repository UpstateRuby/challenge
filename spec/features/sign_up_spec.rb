require 'rails_helper'

feature 'Sign Up' do
  scenario 'with valid email and password' do
    sign_up_with 'test@example.test', 'password'

    expect(page).to have_content('Welcome! You have signed up successfully.')
  end

  scenario 'with invalid email' do
    sign_up_with 'invalid_email', 'password'

    expect(page).to have_content('error prohibited this user from being saved')
  end

  scenario 'with blank password' do
    sign_up_with 'test@example.test', ''

    expect(page).to have_content('error prohibited this user from being saved')
  end

  def sign_up_with(email, password)
    visit new_user_registration_path
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    fill_in 'Password confirmation', with: password
    click_button 'Sign up'
  end
end
