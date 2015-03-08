get '/surveys' do
	@surveys = Survey.all
	erb :'/surveys/index'
end
get '/surveys/new' do
		redirect '/authentication/signin' if !current_user

	erb :'/surveys/new'
end

post '/surveys/new' do
	
	params[:user_id] = session[:user_id]
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

	if questions.class == Hash
		questions.each do |qkey, question|

			@question = Question.update(qkey, :title => question, :survey_id => params[:id])
			if choices.class == Hash
				if choices[qkey].class == Hash

					choices[qkey].each do |ckey, choice|
						Choice.update(ckey, :title => choice, :question_id => @question.id)
					end
				else
					return [500, headers, body= "You Need to add a choice"]
				end
			else 
				return [500, headers, body= "You Need to add a choice"]
			end

		end
	else
		return [500, headers, body= "You Need to add a question"]
	end
	return [200, headers, body= "Survey Successfully Saved"]
end