require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) { User.new(email: 'john_snow@gmail.com', name: 'John Snow', password: 'iamofsand')}

  context "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end



  describe '#password=' do
    it "does not store the password in plain text" do
      user.save!
      u = User.last
      expect(u.password).to be_nil
    end
  end

  describe '#is_password?' do

    before(:each) do
      puts "inside before"
      user.save!
      @u = User.last
    end

    it "returns true if correct password is given" do
      expect(@u.is_password?('iamofsand')).to be_truthy
    end

    it "returns false if incorrect password is given" do
      expect(@u.is_password?('iamofsnow')).to be_falsey
    end
  end

  describe '#reset_session_token' do
    before(:each) do
      @initial_session_token = user.session_token
      user.reset_session_token!
      @final_session_token = user.session_token
    end

    it "resets session token" do
      expect(@initial_session_token).to_not eq(@final_session_token)
    end
  end

  describe '::find_by_credentials' do

    before(:each) do
      puts "inside before"
      user.save!
    end

    it "finds user by its username and password" do
      u = User.find_by_credentials('john_snow@gmail.com','iamofsand')
      expect(u == user).to be_truthy
    end

    it "returns nil if invalid credentials given" do
      u = User.find_by_credentials('john_snow@gmail.com','iamofsnow')
      expect(u == user).to be_falsey
    end
  end

end
