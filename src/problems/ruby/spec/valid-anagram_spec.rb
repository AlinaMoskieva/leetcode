require_relative "../valid-anagram"

describe "Valid Anagram" do
  it { expect(is_anagram("anagram", "nagaram")).to be true }
  it { expect(is_anagram("rat", "cat")).to be false }
end