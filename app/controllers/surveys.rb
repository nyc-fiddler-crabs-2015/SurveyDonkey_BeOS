get '/surveys/new' do
  erb :'/surveys/new'
end

post '/surveys/new' do
  #LINE 7 MUST BE MADE INTO AN ACTIVE COOKIE
  params[:user_id] = 1
  @survey = Survey.create(params)
  redirect "/surveys/#{@survey.id}/edit"
end
