require_relative "../summary-ranges"

describe "Summary Ranges" do
  it { expect(summary_ranges([0,1,2,4,5,7])).to match_array ["0->2","4->5","7"] }
  it { expect(summary_ranges([0,2,3,4,6,8,9])).to match_array ["0","2->4","6","8->9"] }
end