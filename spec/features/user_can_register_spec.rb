require "spec_helper"

describe "User can register for an account" do

  it "signs in and redirects to root page" do
    visit root_path
    click_link("Sign Up")
    fill_in "Name", with: "Johnny"
    fill_in "Email", with: "johnny@apple.com"
    fill_in "Password", with: "appleseed"
    fill_in "Confirm Password", with: "appleseed"
    click_button("Submit")
    expect(page).to have_content "Johnny"
  end

end
