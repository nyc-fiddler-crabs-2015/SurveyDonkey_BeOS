require_relative '../spec_helper.rb'


describe 'Authentication controller'  do
  let(:user) {User.create(email: "dongchul@email.com", password: "password")}

describe 'GET /authentication/signup' do
  it 'should load the sign up page' do
    get '/authentication/signup'
    expect(last_response).to be_ok
  end
end

describe 'GET /authentication/signin' do
  it 'should load the sign in page' do
    get '/authentication/signin'
    expect(last_response).to be_ok
  end
end

describe 'POST /authentication/login' do
  it 'should log in a registered user' do
    post '/authentication/login', params = {user:{email: "dongchul@email.com", password: "password"}}
    expect(last_response).to be_redirect
    follow_redirect!
    last_response.path.should == "/users/#{user.id}"
  end
end

describe 'POST /authentication/register_user' do
  it 'should register a user' do
    post '/authentication/register_user', params = {user:{email: "jay@email.com", password: "psword"}}
    expect(last_response).to be_redirect
    follow_redirect!
    last_response.path.should == "/"
  end
end

describe 'GET /authentication/logout' do
  it 'should log out current user' do
    get '/authentication/logout'
    expect(last_response).to be_redirect
    follow_redirect!
    last_response.path.should == '/'
  end
end

















end
