require "spec_helper"

describe "User can see a homepage" do

  it "has the title GigHub" do
    visit root_path
    expect(page).to have_content "GigHub"
  end

end
