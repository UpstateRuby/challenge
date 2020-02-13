class LoginPage < BasePage

  def visit_login_page
    visit new_user_session_path
  end

  def fill_out_form(email="test@example.test", password="password")
    fill_in "Email", with: email
    fill_in "Password", with: password
  end

  def submit
    click_on "Log in"
  end

end
