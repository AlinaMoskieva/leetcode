require_relative "../best-time-to-buy-and-sell-stock-ii"

describe "Best Time to Buy and Sell Stock II" do
  it { expect(max_profit([7,1,5,3,6,4])).to eq 7 }
  it { expect(max_profit([1,2,3,4,5])).to eq 4 }
  it { expect(max_profit([7,6,4,3,1])).to eq 0 }
  it { expect(max_profit([5,2,3,2,6,6,2,9,1,0,7,4,5,0])).to eq 20 } 
end