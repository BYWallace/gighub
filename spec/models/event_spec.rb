require "spec_helper"

describe Event do
  it { should belong_to(:venue) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:datetime_local) } # Refactor with RegEx
end
