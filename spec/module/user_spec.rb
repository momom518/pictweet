require 'rails_helper'

describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user=build(:user,nickname"")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
  end
end

describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user=bulid(:user,email"")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end

describe User do
  describe '#create' do
    it "is invalid password " do
      user=build(:user,nickname"")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
  end
end