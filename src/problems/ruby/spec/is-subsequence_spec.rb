require_relative "../is-subsequence"

describe "Is Subsequence" do
  it "returns that the input is a subsequence" do
    expect(is_subsequence("abc", "ahbgdc")).to eq true
  end

  context "when the input is not a subsequence" do
    it "returns false" do
      expect(is_subsequence("axc", "ahbgdc")).to eq false
    end
  end
end