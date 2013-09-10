require 'spec_helper'

describe User do

  context "base" do
    it "has a valid factory" do
     expect(create(:user)).to be_valid
    end
  end

   context "validations" do
    let(:user) {create(:user)}
    [:first_name, :last_name, :email, :password].each do |field|
      it "validate #{field} presence" do
        user.send("#{field}=", nil)
        expect(user).to_not be_valid
      end
    end

    it "is invalid with a duplicate email address" do
      pending
    end

    it "should reject short passwords" do
      pending("something else getting finished")

    end
  end

  context "methods" do
    describe "when call full_name method" do
      it "returns a user's full name as a string" do
        pending
      end
    end

  end


end
