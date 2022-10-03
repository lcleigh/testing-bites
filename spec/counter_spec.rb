require "counter"

RSpec.describe Counter do
    it "adds on a given number" do
        counter = Counter.new
        counter.add(12)
        result = counter.report()
        expect(result).to eq "Counted to 12 so far."
    end

end