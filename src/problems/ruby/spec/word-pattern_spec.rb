require_relative "../word-pattern"

describe "Word Pattern" do
  it { expect(word_pattern("abba", "dog cat cat dog")).to be_truthy } 
  it { expect(word_pattern("abba", "dog cat cat fish")).to be_falsey } 
  it { expect(word_pattern("aaaa", "dog cat cat dog")).to be_falsey } 
  it { expect(word_pattern("abba", "dog dog dog dog")).to be_falsey }
end