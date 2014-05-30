require "spec_helper"

describe User do
  it { should_not allow_value('asdfjkl').for(:email) }

  it { should validate_confirmation_of(:password) }

  # describe "#favorite" do

  #   it "stores the favorited event in an array" do
  #     user = User.new(name: "John Doe", email: "john@doe.com", password: "password")
  #     event = Event.new(title: "Johnny and His Band")
  #     expect(user.favorite(event)).to_equal(event)
  #   end
  # end
end
