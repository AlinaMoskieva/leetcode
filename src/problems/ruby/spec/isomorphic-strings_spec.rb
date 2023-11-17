require_relative "../isomorphic-strings"

describe "Isomorphic Strings" do
  it { expect(is_isomorphic("egg", "add")).to eq true }
  it { expect(is_isomorphic("foo", "bar")).to eq false }
  it { expect(is_isomorphic("paper", "title")).to eq true }
end