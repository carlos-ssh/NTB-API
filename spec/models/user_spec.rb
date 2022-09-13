# First Spec validate the Object in this case User model

require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#validations' do
    it 'should validate presence of attributes' do
      user = build :user
      expect(user).to be_valid

      user = build :user, login: nil, provider: nil
      expect(user).to_not be_valid
      expect(user.error.messages[:login]).to include("can't be blank")
      expect(user.error.messages[:provider]).to include("can't be blank")
    end

    it 'should validate uniqueness of login' do
      user = create :user
      user2 = build :user, login: user.login
      expect(user2).to_not be_valid
      expect(user2). to be_valid
    end
  end
end
