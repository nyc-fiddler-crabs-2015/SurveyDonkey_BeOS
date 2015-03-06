user1 = User.create(email: "kiran", password: "123")
user2 = User.create(email: "kevin", password: "123")
user3 = User.create(email: "dongchul", password: "123")
user4 = User.create(email: "justin", password: "123")




survey1 = Survey.create(title: "Best Dogs", user_id: user1.id)
survey2 = Survey.create(title: "Best Cats", user_id: user2.id)
survey3 = Survey.create(title: "Best Dragons", user_id: user3.id)
survey4 = Survey.create(title: "Best Workouts", user_id: user4.id)

s1question1 = Question.create(title: "Do you like Coffee?", survey_id: survey1.id)
s1question2 = Question.create(title: "How is repeating", survey_id: survey1.id)

s2question1 = Question.create(title: "Do you like football?", survey_id: survey2.id)
s2question2 = Question.create(title: "Where do you like to be placed on the field?", survey_id: survey2.id)

s3question1 = Question.create(title: "Do you like to take Surveys?", survey_id: survey3.id)
s3question2 = Question.create(title: "Which is your favorite to take?", survey_id: survey3.id)

s4question1 = Question.create(title: "Do you enjoy using technology?", survey_id: survey4.id)
s4question2 = Question.create(title: "Which type of technology do you enjoy most?", survey_id: survey4.id)

s1q1choice1 = Choice.create(title: "choice:1", question_id: s1question1.id)
s1q1choice2 = Choice.create(title: "choice:2", question_id: s1question1.id)
s1q1choice3 = Choice.create(title: "choice:3", question_id: s1question1.id)
s1q1choice4 = Choice.create(title: "choice:4", question_id: s1question1.id)

s1q2choice1 = Choice.create(title: "choice:1", question_id: s1question2.id)
s1q2choice2 = Choice.create(title: "choice:2", question_id: s1question2.id)
s1q2choice3 = Choice.create(title: "choice:3", question_id: s1question2.id)
s1q2choice4 = Choice.create(title: "choice:4", question_id: s1question2.id)

s2q1choice1 = Choice.create(title: "choice:1", question_id: s2question1.id)
s2q1choice2 = Choice.create(title: "choice:2", question_id: s2question1.id)
s2q1choice3 = Choice.create(title: "choice:3", question_id: s2question1.id)
s2q1choice4 = Choice.create(title: "choice:4", question_id: s2question1.id)

s2q2choice1 = Choice.create(title: "choice:1", question_id: s2question2.id)
s2q2choice2 = Choice.create(title: "choice:2", question_id: s2question2.id)
s2q2choice3 = Choice.create(title: "choice:3", question_id: s2question2.id)
s2q2choice4 = Choice.create(title: "choice:4", question_id: s2question2.id)

s3q1choice1 = Choice.create(title: "choice:1", question_id: s3question1.id)
s3q1choice2 = Choice.create(title: "choice:2", question_id: s3question1.id)
s3q1choice3 = Choice.create(title: "choice:3", question_id: s3question1.id)
s3q1choice4 = Choice.create(title: "choice:4", question_id: s3question1.id)

s3q2choice1 = Choice.create(title: "choice:1", question_id: s3question2.id)
s3q2choice2 = Choice.create(title: "choice:2", question_id: s3question2.id)
s3q2choice3 = Choice.create(title: "choice:3", question_id: s3question2.id)
s3q2choice4 = Choice.create(title: "choice:4", question_id: s3question2.id)

s4q1choice1 = Choice.create(title: "choice:1", question_id: s4question1.id)
s4q1choice2 = Choice.create(title: "choice:2", question_id: s4question1.id)
s4q1choice3 = Choice.create(title: "choice:3", question_id: s4question1.id)
s4q1choice4 = Choice.create(title: "choice:4", question_id: s4question1.id)

s4q2choice1 = Choice.create(title: "choice:1", question_id: s4question2.id)
s4q2choice2 = Choice.create(title: "choice:2", question_id: s4question2.id)
s4q2choice3 = Choice.create(title: "choice:3", question_id: s4question2.id)
s4q2choice4 = Choice.create(title: "choice:4", question_id: s4question2.id)



  # belongs_to :user
  # belongs_to :survey
  # belongs_to :question
  # belongs_to :choice
