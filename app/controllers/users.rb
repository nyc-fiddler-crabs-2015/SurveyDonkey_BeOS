get '/users/:id' do
  @user = User.find(params[:id])
  @surveys = Survey.where("user_id = #{params[:id]}")
  erb :'users/home'
end

get '/authentication/logout' do
  session[:user_id] = nil
  redirect '/'
end
