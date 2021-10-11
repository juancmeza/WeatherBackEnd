require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Test User Model' do

    it "has a username, email, and password" do
      expect(User.new(username: 'testUser0', email: 'test0@test.com', password: '0')).to be_valid
    end

    it "must have a username" do
      expect(User.new(email: 'test1@test.com', password: '1')).to_not be_valid
    end

    it "must have an email" do
      expect(User.new(username: 'tesUser2', password: '2')).to_not be_valid
    end

    it "must have a password" do
      expect(User.new(username: 'tesUser3', email: 'test3@test.com')).to_not be_valid
    end

    it "has a unique username" do
      valid_user = User.new(username: 'testUser4', email: 'test4@test.com', password: '4')
      invalid_user = User.new(username: 'testUser4', email: 'test41@test.com', password: '41')
      expect(invalid_user).to_not be_valid
    end

    it "has a unique email" do
      valid_user = User.new(username: 'testUser5', email: 'test5@test.com', password: '5')
      invalid_user = User.new(username: 'testUser51', email: 'test5@test.com', password: '5')
      expect(invalid_user).to_not be_valid
    end

    it "has an email with proper format" do
      expect(User.new(username: 'testUser6', email: 'test6@test.com', password: '6')).to be_valid
      expect(User.new(username: 'testUser7', email: 'test7@test.io', password: '7')).to be_valid
      expect(User.new(username: 'testUser8', email: 'test8', password: '8')).to_not be_valid
      expect(User.new(username: 'testUser9', email: 'test9@test.123com', password: '9')).to_not be_valid
    end

  end

end
