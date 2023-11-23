require_relative "../valid-parentheses"

describe "Valid Parentheses" do
  it { expect(is_valid("()")).to be_truthy }
  it { expect(is_valid("()[]{}")).to be_truthy }
  it { expect(is_valid("(]")).to be_falsey }
end