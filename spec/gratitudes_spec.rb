require "gratitudes"

RSpec.describe Gratitudes do

    it "returns no gratitudes" do
        gratitudes = Gratitudes.new
        expect(gratitudes.format).to eq "Be grateful for: "
    end

    it "returns 3 gratitudes" do
        gratitudes = Gratitudes.new
        gratitudes.add("health")
        gratitudes.add("family")
        gratitudes.add("happiness")
        expect(gratitudes.format).to eq "Be grateful for: health, family, happiness"
    end

end
