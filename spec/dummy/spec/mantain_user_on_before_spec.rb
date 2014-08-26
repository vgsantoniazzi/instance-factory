require 'spec_helper'

describe 'mantain same user' do

  before do
    @user = instance_factory(:user)
  end

  it 'true should be true' do
    expect(@user).to eq instance_factory(:user)
  end
end
