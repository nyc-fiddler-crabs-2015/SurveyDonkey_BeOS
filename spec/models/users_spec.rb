
require_relative "../spec_helper"

describe "User Model" do
  let(:dongchul){User.create(email:"james@james.com", password:"0000")}

  before do
    dongchul
  end

  it 'should have a email' do
    expect(dongchul.email).to eq("james@james.com")
  end

end