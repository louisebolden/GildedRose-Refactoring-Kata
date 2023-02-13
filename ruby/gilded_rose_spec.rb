require File.join(File.dirname(__FILE__), 'gilded_rose')

# A very basic factory method - would use e.g. FactoryBot
def build_item(name:, sell_in:, quality:)
  Item.new(name, sell_in, quality)
end

describe GildedRose do
  let(:item) { build_item(name: "Test Item", sell_in: 1, quality: 1) }
  let(:items) { [item] }

  describe "#update_quality" do
    it "does not change the name" do
      GildedRose.new(items).update_quality()
      expect(items[0].name).to eq "Test Item"
    end
  end
end
