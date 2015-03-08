post '/surveys/:id/question/new' do
	@question = Question.create(title: "blank", survey_id: params[:id])
	redirect back
end