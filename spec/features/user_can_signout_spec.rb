require "spec_helper"

describe "User can sign in or out" do
    let(:user) { FactoryGirl.create(:user) }

  it "attempts sign in with invalid credentials" do
    visit "/signin"
    fill_in "email", with: "blah@blah.com"
    fill_in "password", with: "blah"
    click_button "Sign in"
    expect(page).to have_content "Invalid"
  end

  it "signs out from the index page" do
    login(user)
    click_button("Sign Out")
    expect(page).to have_content "Sign In"
  end

   def login(user)
    visit "/signin"
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_button "Sign in"
  end

end
