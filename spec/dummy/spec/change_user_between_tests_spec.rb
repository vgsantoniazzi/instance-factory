require 'spec_helper'

describe 'mantain database clear' do

  context 'can view @user' do
    before do
      @user = instance_factory(:user)
    end

    it '#count' do
      expect(User.count).to eq(1)
    end

    it 'user should be avaliable here' do
      expect(@user).to eq instance_factory(:user)
    end
  end

  context 'cannot view @user' do

    it '#count' do
      expect(User.count).to eq(0)
    end

  end
end
