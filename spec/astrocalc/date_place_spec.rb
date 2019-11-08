require "spec_helper"

module Astrocalc
  describe DatePlace do
    let(:data) { DATA }

    context "when given valid data" do
      let(:date_place) do
        described_class.new(data.date, data.place)
      end

      describe "#julian_date" do
        it "returns the julian date of the given date" do
          expect(date_place.julian_date).to eq(data.jd)
        end
      end
    end
  end
end
