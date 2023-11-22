require_relative "../contains-duplicate-ii"

describe "Contains Duplicate II" do
  it { expect(contains_nearby_duplicate([1,2,3,1], 3)).to be_truthy }
  it { expect(contains_nearby_duplicate([1,0,1,1], 1)).to be_truthy }
  it { expect(contains_nearby_duplicate([1,2,3,1,2,3], 2)).to be_falsey }
end