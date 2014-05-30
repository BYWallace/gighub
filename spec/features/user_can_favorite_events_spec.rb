require 'spec_helper'

describe "User can favorite events" do
    let(:user) { FactoryGirl.create(:user) }

    it "signs in and the favorites buttons are populated" do
    visit "/signin"
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_button "Sign in"
    click_link("favorite")
    expect(page).to have_content("-")
    end

end

# Create a new artist and song
# Sign the user in
# Visit the songs page
# Click the purchase button for the song
# Visit the list of users song
# Expect the song you purchased to be on the page
