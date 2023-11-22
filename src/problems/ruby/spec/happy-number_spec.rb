require_relative "../happy-number"

describe "Happy Number" do
  it { expect(is_happy(19)).to be true }
  it { expect(is_happy(2)).to be false }
end