require "counter"

RSpec.describe Counter do
    it "initially reports a count of zero" do
        counter = Counter.new
        result = counter.report()
        expect(result).to eq "Counted to 0 so far."
    end

    it "reports a count of 12" do
        counter = Counter.new
        counter.add(12)
        result = counter.report()
        expect(result).to eq "Counted to 12 so far."
    end

    it "reports a count of all added values" do
        counter = Counter.new
        counter.add(6)
        counter.add(21)
        counter.add(8)
        result = counter.report()
        expect(result).to eq "Counted to 35 so far."
    end

    it "reports a count of all added values" do
        counter = Counter.new
        counter.add(-6)
        counter.add(4)
        counter.add(5.5)
        result = counter.report()
        expect(result).to eq "Counted to 3.5 so far."
    end
end