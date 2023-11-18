require_relative "../two-sum-ii-input-array-is-sorted"

describe "Two Sum II - Input Array Is Sorted" do
  it { expect(two_sum([2,7,11,15], 9)).to eq [1, 2] }
  it { expect(two_sum([2, 3, 4], 6)).to eq [1, 3] }
  it { expect(two_sum([-1,0], - 1)).to eq [1, 2] }
end