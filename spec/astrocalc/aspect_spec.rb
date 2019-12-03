"require spec_helper"

module Astrocalc
  describe Aspect do
    let(:test) { DATA }
    let(:chart) { Chart.new(test.date, test.place) }
    let(:aspect) { described_class.new(chart) }

    describe "#aspect" do
      context "when the planets form an aspect" do
        it "returns an array of the aspect and degree" do
          expect(aspect.aspect(test.example_aspect_input[0],
test.example_aspect_input[1])).to eq(test.example_aspect)
        end
      end
      context "when the planets don't form an aspect" do
        it "returns nil" do
          expect(aspect.aspect(test.example_non_aspect[0], test.example_non_aspect[1])).to be_nil
        end
      end
    end

  describe "#aspects" do
    it "returns an array of all major aspects for the chart" do
      expect(aspect.aspects).to eq(test.example_aspects)
    end
  end
  end
end
