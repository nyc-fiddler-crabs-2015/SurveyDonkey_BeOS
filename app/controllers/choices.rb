post '/surveys/:id/questions/:q_id/choices/new' do
	content_type :json
	@choice = Choice.create(title: "blank", question_id: params[:q_id])
	last_question = @choice.question.choices.count
	question_id =  @choice.question.id
	choice_id = @choice.id
	return {lastQuestion: last_question, choiceID: choice_id, questionID: question_id}.to_json
end