require "password_checker"

RSpec.describe PasswordChecker do
    
    it "password is > 8 so it passes the check" do
        password = PasswordChecker.new
        expect(password.check("hello12345")).to eq true
    end

    it "password is = 8 so it passes the check" do
        password = PasswordChecker.new
        expect(password.check("code1234")).to eq true
    end

    it "fails because password < 8" do
        password = PasswordChecker.new
        expect{password.check("secret")}.to raise_error "Invalid password, must be 8+ characters."
    end

end