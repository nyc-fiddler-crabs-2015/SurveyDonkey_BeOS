get '/' do
  erb :index
end

get '/.json' do
  if params[:code] == "1234"
  {secret_user: 'East Philosophy'}.to_json
else
  403
  end
end

get '/guess' do
  erb :guess
end