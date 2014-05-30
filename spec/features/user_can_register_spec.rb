require "spec_helper"

describe "User can register for an account" do

  it "signs in and redirects to root page" do
    visit root_path
    click_link("Sign Up")
    fill_in "name", with: "Johnny"
    fill_in "email", with: "johnny@apple.com"
    fill_in "password", with: "appleseed"
    fill_in "confirm password", with: "appleseed"
    click_button("Submit")
    click_link("Personal Calendar")
    expect(page).to have_content "Johnny"
  end

  it "throws an error when information is invalid" do
    visit root_path
    click_link("Sign Up")
    fill_in "name", with: "Johnny"
    fill_in "email", with: "johnny@apple.com"
    fill_in "password", with: "appleseed"
    fill_in "confirm password", with: "asdf"
    click_button("Submit")
    expect(page).to have_content "Errors"

    end

end
