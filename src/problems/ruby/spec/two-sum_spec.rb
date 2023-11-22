require_relative "../two-sum"

describe "Two Sum" do
  it { expect(two_sum([2,7,11,15], 9)).to match_array([0, 1]) }
  it { expect(two_sum([3, 2, 4], 6)).to match_array([1, 2]) }
  it { expect(two_sum([3, 3], 6)).to match_array([0, 1]) }
end