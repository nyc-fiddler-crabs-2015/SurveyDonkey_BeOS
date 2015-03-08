post '/surveys/:id/questions/new' do
	content_type :json
	@question = Question.create(title: "blank", survey_id: params[:id])
	hash = {}
	questionNum = @question.survey.questions.count
	surveyID = @question.survey.id
	questionID = @question.id

	return {questionNum: questionNum, surveyID: surveyID, questionID: questionID}.to_json
end