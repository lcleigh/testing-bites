# How to test the class
require "reminder"

RSpec.describe Reminder do
    context "when no task is set" do
        it "fails" do
            reminder = Reminder.new("Laura")
            # use curly braces - put the code that thorws the wrror inside the braces
            # use raise_error instead of eq
            expect { reminder.remind()}.to raise_error "No reminder set!"
        end
    end

    it "reminds the user to perform a task" do
        reminder = Reminder.new("Laura")
        reminder.remind_me_to("Wash up")
        result = reminder.remind()
        expect(result). to eq "Wash up, Laura!"
    end
end