require_relative "../longest-common-prefix"

describe "Longest Common Prefix" do
  describe "checks for the longest prefix" do
    let(:array) { ["flower","flow","flight"] }
    let(:expected_result) { "fl" }

    it "should be eq fl" do
      expect(longest_common_prefix(array)).to eq(expected_result)
    end
  end

  context "when there is no prefix" do
    let(:array) { ["dog","racecar","car"] }
    let(:expected_result) { "" }

    it "should be eq fl" do
      expect(longest_common_prefix(array)).to eq(expected_result)
    end
  end

end