# require_relative '../spec_helper'

# describe 'Model' do

#   describe "create user" do
#   let(:user) {User.create(name: 'danny', password: '1234' ) }
#   it 'create a new user' do
#     expect(User.find_by(name: 'danny').name).to eq('danny')
#   end
#  end
# end


require_relative "../spec_helper"

describe "User Model" do
  let(:dongchul){User.create(name:"dongchul", password:"0000")}

  it 'should have a name' do
    expect(dongchul.name).to eq("dongchul")
  end

end