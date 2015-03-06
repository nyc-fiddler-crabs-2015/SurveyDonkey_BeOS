get '/users.json' do
	content_type :json
	@users = User.all

	return @users.to_json
end

get '/users2.json' do
	content_type :json
	return [{user: 'East Philosophy'},{user: 'West Philosophy'}].to_json
end


get '/test' do
	erb :'ajax/test'
end

get '/ajax_users' do
	erb :'ajax/ajax_users'
end