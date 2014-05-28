require "spec_helper"

describe "User can sign out" do
    let(:user) { FactoryGirl.create(:user) }

  it "signs out from the index page" do
    login(user)
    click_button("Sign Out")
    expect(page).to have_content "Sign In"
  end

   def login(user)
    visit "/signin"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end

end
