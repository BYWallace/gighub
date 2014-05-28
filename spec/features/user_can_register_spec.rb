require "spec_helper"

describe "User can register for an account" do
  let(:user) { FactoryGirl.create(:user) }

  it "signs in and redirects to root page" do
    visit root_path
    click_link("Sign Up")
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password Confirmation", with: user.password
    click_button("Submit")
    expect(page).to have_content "Sign Out"
  end

end
