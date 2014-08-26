require 'spec_helper'

describe 'mantain database clear' do

  context 'can view @user' do
    before do
      @user = instance_factory(:user)
      @adderess = instance_factory(:adderess)
    end

    it 'same adderess' do
      expect(@user.adderesses.first).to eq(instance_factory(:adderess))
    end

    it 'same user' do
      expect(@adderess.user).to eq instance_factory(:user)
    end
  end

  context 'should create user' do

    before do
      @adderess = instance_factory(:adderess)
    end

    it 'user' do
      expect(@adderess.user).to eq instance_factory(:user)
    end

  end

  context 'should create user' do

    before do
      @adderess = FactoryGirl.create(:adderess)
    end

    it 'user' do
      expect(@adderess.user).to eq instance_factory(:user)
    end

  end
end
