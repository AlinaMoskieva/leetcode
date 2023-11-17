require_relative "../valid-palindrome"

describe "Valid Palindrome" do
  it "returns that the input is a palindrome" do
    expect(is_palindrome("A man, a plan, a canal: Panama")).to eq true
  end

  context "when the input is not a palindrome" do

    it "returns false" do
      expect(is_palindrome("race a car")).to eq false
    end
  end

  context "when the inout is empty" do
    it "returns true" do
      expect(is_palindrome("  ")).to eq true
    end
  end
end