require "string_builder"

RSpec.describe StringBuilder do
    
    context "and empty string" do
        it "initially returns an empty string as output" do
            new_string = StringBuilder.new
            result = new_string.output
            expect(result).to eq ""
        end

        it "returns the length of 0" do
            new_string = StringBuilder.new
            result = new_string.size
            expect(result).to eq 0
        end
    end
    
    context "given one addition of a string" do
        it "gives an output of that string" do
            new_string = StringBuilder.new
            new_string.add("hello")
            result = new_string.output()
            expect(result).to eq "hello"
        end

        it "returns the length of that string" do
            new_string = StringBuilder.new
            new_string.add("hello")
            result = new_string.size
            expect(result).to eq 5
        end
    end

    

end