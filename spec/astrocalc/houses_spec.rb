require "spec_helper"

module Astrocalc
  describe Houses do
    let(:date_place) { DatePlace.new(joan_date, joan_place) }
    let(:houses) { described_class.new(date_place) }

    describe "#all" do
      it "returns the houses including ASC and MC in signs" do 
        skip
        expect(houses.all).to eq(joan_all_houses)
      end
    end
  end
end
