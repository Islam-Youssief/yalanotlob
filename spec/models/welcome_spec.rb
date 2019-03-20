require 'rails_helper'

RSpec.describe Welcome, type: :model do

  context "Created authorize_user using FactoryBot" do
  	before do
      @user = FactoryBot.build(:authorize_user)
      @user.save
    end

    it "Expected valid user created" do
      expect(@user).to be_valid
    end

  end

end
