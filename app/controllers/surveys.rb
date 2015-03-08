get '/surveys/new' do
	erb :'/surveys/new'
end

post '/surveys/new' do
	@survey = Survey.create(params)
	redirect "/surveys/#{@survey.id}/edit"
end

get '/surveys/:id' do
	@survey = Survey.find(params[:id])
	erb :'/surveys/show'
end

get '/surveys/:id/edit' do
	@survey = Survey.find(params[:id])
	erb :'/surveys/edit'
end

put '/surveys/:id' do
	@survey = Survey.find(params[:id])
	questions = params[:question]
	choices = params[:choice]
	

	questions.each do |qkey, question|
		puts question
		@question = Question.update(qkey, :title => question, :survey_id => params[:id])

		choices[qkey].each do |ckey, choice|
			puts choice
			Choice.update(ckey, :title => choice, :question_id => @question.id)
		end
	end
	redirect back
end