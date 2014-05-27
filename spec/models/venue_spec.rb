require "spec_helper"

describe Venue do
  it { should have_many(:events) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:city) }
  it { should ensure_length_of(:state).is_at_least(2) }
  it { should validate_presence_of(:postal_code) }

  it { should validate_numericality_of(:latitude) }
  it { should validate_numericality_of(:longitude) }
end
