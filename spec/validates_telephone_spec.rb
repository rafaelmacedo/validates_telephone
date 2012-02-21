require 'spec_helper'

describe TelephoneValidator do
  context "when telephone is invalid" do
    before :each do
      @user = User.new(:telephone => "12345")
    end

    it "should set object as invalid" do
      @user.valid?.should be_false
    end

    it "should set an error on attribute" do
      @user.valid?
      @user.errors[:telephone].should == ['is invalid']
    end
  end

  context "when telephone is valid" do
    before :each do
      @user = User.new(:telephone => "(11)1111-1111")
    end

    it "should set object as valid" do
      @user.valid?.should be_true
    end

    it "should not set an error on attribute" do
      @user.valid?
      @user.errors[:telephone].should be_blank
    end
  end

  it "should accept a nil value" do
    @user = User.new(:telephone => nil)
    @user.valid?.should be_true
  end
end