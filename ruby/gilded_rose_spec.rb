require File.join(File.dirname(__FILE__), 'gilded_rose')

# A very basic factory method - would use e.g. FactoryBot
def build_item(name:, sell_in:, quality:)
  Item.new(name, sell_in, quality)
end

describe GildedRose do
  let(:item) { build_item(name: "Default Item", sell_in: 1, quality: 1) }
  let(:items) { [item] }

  subject { GildedRose.new(items) }

  describe "#update_quality" do
    before { subject.update_quality }

    it "does not change the name" do
      expect(items[0].name).to eq "Default Item"
    end

    context "when an item's quality decreases over time" do
      context "when an item's quality value is zero" do
        let(:item) { build_item(name: "Default Item", sell_in: 1, quality: 0) }

        it "does not reduce the quality value for that item" do
          expect(items[0].quality).to eq(0)
        end
      end
    end
  end
end
