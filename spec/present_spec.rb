require "present"

RSpec.describe Present do
    
    it "wraps and unwraps a presend" do
        present = Present.new
        present.wrap("chocolates")
        result = present.unwrap
        expect(result).to eq "chocolates"
    end
     
    it "fails if we unwrap without wrapping first" do
        present = Present.new
        expect {present.unwrap}.to raise_error "No contents have been wrapped."
    end

    it "fails if present has already been wrapped" do
        present = Present.new
        present.wrap("chocolates")
        expect { present.wrap("chocolates") }.to raise_error "A contents has already been wrapped."
        expect(present.unwrap).to eq "chocolates"
    end 

    
    
end