require_relative '../spec_helper'

describe 'User Model' do
  let(:valid_user) { User.new(name: 'kim',password: '1234' ) }

  it 'saved a valid user to the database' do
    valid_user.save
    saved_user = User.find_by(name: 'kim')
    expect(saved_user.password).to eq('1234')
  end
end