require_relative "../find-the-index-of-the-first-occurrence-in-a-string"

describe "Find the Index of the First Occurrence in a String" do
  it "founds first occurrence" do 
    expect(str_str("sadbutsad", "sad")).to eq 0
  end

  context "when no occurrences exist" do
    it "returns -1" do
      expect(str_str("leetcode", "leeto")).to eq -1
    end
  end
end