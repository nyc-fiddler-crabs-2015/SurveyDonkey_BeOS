require_relative "../spec_helper.rb"


describe "Authentication controller"  do
  let(:user) {User.create(email: "dongchul@email.com", password: "password")}

describe "GET /authentication/signup" do
  it 'should load the sugnup page' do
    get '/authentication/signup'
    expect(last_response).to be_ok
  end
end

















end
