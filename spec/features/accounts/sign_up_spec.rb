require "rails_helper"

feature "Accounts" do
  scenario "creating an account" do
    visit subscribem.root_path
    click_link "Account Sign Up"
    fill_in "Name", with: "Test"
    fill_in "Email", with: "subscribem@example.com"
    # The :exact option here on the password field tells Capybara that we want to match a field exactly.
    # Capybara’s default behaviour is to match the field names partially. Because we’re going to have two
    # fields on this page which both have labels beginning with the word “Password”, Capybara will get
    # confused and won’t know which field we meant. Passing the :exact option removes that confusion
    # and Capybara will use the field called “Password”.
    fill_in "Password", with: 'password', exact: true
    fill_in "Password confirmation", with: "password"

    click_button "Create Account"
    success_message = "Your account has been successfully created."
    expect(page).to have_content(success_message)
    expect(page).to have_content("Signed in as subscribem@example.com")
  end
end