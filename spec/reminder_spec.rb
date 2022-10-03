# How to test the class
require "reminder"

RSpec.describe Reminder do
    it "reminds the user to perform a task" do
        reminder = Reminder.new("Laura")
        reminder.remind_me_to("Wash up")
        result = reminder.remind()
        expect(result). to eq "Wash up, Laura!"
    end
end