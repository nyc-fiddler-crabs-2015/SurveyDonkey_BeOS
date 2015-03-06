get '/surveys/new' do
  erb :'/surveys/new'
end

post '/surveys' do
  @survey = Survey.create(params)
  redirect "/surveys/#{@survey.id}/edit"
end
