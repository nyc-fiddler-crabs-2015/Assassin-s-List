require_relative '../spec_helper'

describe 'Users Controller' do
  let(:user) {User.create(name: 'hassasino', password: '12345')}
    it 'responded to a logged in get request to /users/:id route' do
    session[:user_id] = user.id
    get "/users/#{user.id}"
    expect(last_response).to be_ok

  end
end