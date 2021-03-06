require 'rails_helper'

describe User do
  it { should validate_presence_of :name}
  it { should validate_presence_of :email}
  it { should validate_presence_of :password_digest}


  it "returns user information" do
    user = FactoryGirl.create(:user)
    user.name.should eq "Dave"
  end
end
