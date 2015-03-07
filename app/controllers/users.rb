get '/users/:id' do
  @user = User.find(params[:id])
  @survey = Survey.all
  erb :'users/home'
end


get '/authentication/logout' do
  session[:user_id] = nil
  redirect '/'
end
