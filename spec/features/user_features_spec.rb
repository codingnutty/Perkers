require "rails_helper"
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

describe 'User', js: true  do
  context 'New User SignUp' do
    it 'can click the signup link and be directed to sigup page' do
      visit new_user_registration_path
      within(:css, "#sign_up") do
        click_on('Sign up')
      end
      page.has_content?('Email')
    end

    it 'allows you to sign up and enter your email and password and redirects you to front page' do
      visit new_user_registration_path
      within(:css, "#sign_up") do
        click_on('Sign up')
      end
      fill_in "Email", with: "bison@bison.com"
      fill_in "Password", with: "password"
      fill_in "Password confirmation", with: "password"
      within(:css, "form") do
        click_on('Sign up')
      end
      page.has_content?('Perks')
    end
  end
  context 'New User Login' do
    it 'can click the Login link and be directed to login page' do
      visit new_user_session_path
      within(:css, "#session") do
        click_on('Log in')
      end
      page.has_content?('Email')
    end

    it 'allows you to login and enter your email and password and redirects you to front page' do
      visit new_user_session_path
      within(:css, "#session") do
        click_on('Log in')
      end
      fill_in "Email", with: "bison@bison.com"
      fill_in "Password", with: "password"
      within(:css, "#session") do
        click_on('Log in')
      end
      page.has_content?('Perks')
    end
  end
end
