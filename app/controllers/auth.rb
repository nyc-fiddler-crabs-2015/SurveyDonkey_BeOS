get '/login' do

  erb :'auth/login'
end

get '/login_ajax' do

  erb :'auth/login_ajax'
end

# post '/login' do
#   @user = User.authenticate(params)

#   if @user
#     session[:user_id] = @user.id

#     redirect '/secret_page'
#   else
#     redirect '/login'
#   end
# end

post '/login' do 
  user = User.find_by_username(params[:username])
  if user && user.authenticate( params[:password] )
    session[:user_id] = user.id
    p session[:user_id]
    redirect '/secret_page'
  else
    redirect '/login?error=upi'
  end
end

post '/login.json' do
  content_type :json
  p params
  email = params[:username]
  password = params[:password_digest]
  @user =User.authenticate(params)

  if @user
    session[:user_id] = @user.id
    @user.to_json
  else
    403
  end
end

get '/signup' do
  erb :'auth/signup'
end

# post '/signup' do
#   p params
#   @user = User.new(params)
#     if @user.save
#       session[:user_id] = @user.id
#       redirect '/'
#     else
#       # session[:error] = @user.errors.messages
#       redirect '/signup'
#     end


# end

post '/signup' do
  user = User.new(params)

  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/signup?error=sww'

  end

end

get '/secret_page' do
  # @user = User.find(session[:user_id])
  # if not current user
  # redirect to login
  # else
  # they can see
  # end
  erb :'auth/secret_page'

end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

