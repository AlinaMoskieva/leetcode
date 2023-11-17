require_relative "../ransom-note"

describe "Ransom Note" do
  it { expect(can_construct("a", "b")).to eq false }
  it { expect(can_construct("aa", "ab")).to eq false }
  it { expect(can_construct("aa", "aab")).to eq true } 
end