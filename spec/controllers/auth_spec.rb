require_relative "../spec_helper.rb"

describe "Auth spec" do
  let(:user){User.create(name:"rayan",password:"test")}

  before do
    User
  end

  it 'should have an index page' do
  get '/'
  expect(last_response.status).to eq(200)
  end

  it 'should have a login' do
  get '/'
  expect(last_response.body).to include "login"
  end

  it 'should have a signup' do
  get '/'
  expect(last_response.body).to include "signing up"
  end

  it 'should redirect after logging in' do
  post '/login', params = { user: {name:'rayan',password:'test'}}
  expect(last_response).to be_redirect
  follow_redirect!
  expect(last_response.body).to include("#{user.name}'s Profile")
  end


end
