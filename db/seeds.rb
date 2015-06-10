# Seed data created by Cornelius Donley and Christian Winger

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

login1 = Login.create(username: 'cvdonley', password: 'RonPaul2012', email: 'cvdonley@noctrl.edu', first_name: 'Cornelius', last_name: 'Donley', login_type: 1, middle_initial: 'VA')

company_info1 = CompanyInfo.create(street: '1 Microsoft Way', city: 'Redmond', state: 'WA', zip: '98052', country_code: '+1', area_code: '425', prefix: '882', suffix: '8080')
company1 = Company.create(company_name: 'Microsoft Corporation', company_info_id: company_info1.id)
login2 = Login.create(username: 'jduser', password: 'password', email: 'jjdoe@noctrl.edu', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now, first_name: 'John', last_name: 'Doe', login_type: 2)
user2 = User.create(login_id: login2.id, city: 'Naperville', state: 'IL', zip: '60540', program: 'Computer Science', spouse_first_name: 'Jane', spouse_last_name: 'Doe', spouse_middle_initial: 'J', number_children: 1, ethnicity: 'hispanic', general_opt_in: 1, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 1, company_info_id: company_info1.id, job_title: 'Systems Analyst', birth_day: '1980-01-01', start_date: '2014-09-15', end_date: '2015-06-13', salary_range: 3, street: '610 N. Brainard St.')
user_phone2 = UserPhone.create(user_id: user2.id, country_code: '1', area_code: '260', prefix: '630', suffix: '1031', user_phone_type: 1)
college2 = College.create(college_name: 'North Central College')
degree2 = Degree.create(major_name: 'Computer Science', degree_type: 3)
undergraduate_degree2 = UndergraduateDegree.create(user_id: user2.id, college_id: college2.id, degree_id: degree2.id, graduation_date: '2012-12-21')

degree3 = Degree.create(major_name: 'Computer Science', degree_type: 5)
college3 = College.create(college_name: 'North Central College')
graduate_degree2 = GraduateDegree.create(user_id: user2.id, college_id: college3.id, degree_id: degree3.id, graduation_date: '2016-12-21', status: 1)

login3 = Login.create(username: 'gcuser', password: 'password', email: 'gcostanza@noctrl.edu', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now, first_name: 'George', last_name: 'Costanza', login_type: 2)
user3 = User.create(login_id: login3.id, city: 'Manhattan', state: 'NY', zip: '12345', program: 'Business Administration', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 0, phone_opt_in: 0, badges_opt_in: 1, status: 1, company_info_id: company_info1.id, job_title: 'Importer/Exporter', birth_day: '1968-02-02', start_date:'2014-09-15', salary_range: 2, street: '1100 South St.')
user_phone3 = UserPhone.create(user_id: user3.id, area_code: '110', prefix: '120', suffix: '1111', user_phone_type: 0)

login4 = Login.create(username: 'cwuser', password: 'password', first_name: 'Christian', last_name: 'Winger', email: 'cwinger@noctrl.edu', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now, login_type: 2)
user4 = User.create(login_id: login4.id, city: 'Bloomington', state: 'IL', zip: '61705', program: 'Mathematics', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 0, birth_day: '1993-04-10', start_date:'2011-09-15', salary_range: 0, street: '9507 Grandville')
user_phone4 = UserPhone.create(user_id: user4.id, area_code: '309', prefix: '826', suffix: '2303', user_phone_type: 0)
user_phone41 = UserPhone.create(user_id: user4.id, area_code: '309', prefix: '260', suffix: '8756', user_phone_type: 1)
college6 = College.create(college_name: 'Illinois State')
degree6 = Degree.create(major_name: 'Computer Science', degree_type: 3)
undergraduate_degree4 = UndergraduateDegree.create(user_id: user4.id, college_id: college6.id, degree_id: degree6.id, graduation_date: '2012-12-21')
degree7 = Degree.create(major_name: 'Computer Science', degree_type: 5)
college7 = College.create(college_name: 'North Central College')
graduate_degree5 = GraduateDegree.create(user_id: user4.id, college_id: college7.id, degree_id: degree7.id, graduation_date: '2014-6-21', status: 0)
degree8 = Degree.create(major_name: 'Mathematics', degree_type: 5)
graduate_degree5 = GraduateDegree.create(user_id: user4.id, college_id: college7.id, degree_id: degree8.id, graduation_date: '2017-6-21', status: 1)

login5 = Login.create(username: 'worker', password: 'password', first_name: 'Jane', last_name: 'Doe', email: 'jddoe@noctrl.edu', created_at: DateTime.now, sign_in_count: 0, updated_at: DateTime.now, login_type: 0)

list1 = SavedList.create(login_id: login1.id, list_name: 'My First List', date_saved: '2015-05-28')
list_users1 = SavedListUser.create(saved_list_id: list1.id, user_id: user3.id)
list_users2 = SavedListUser.create(saved_list_id: list1.id, user_id: user2.id)

# survey1 = Survey.create(login_id: login5.id, survey_name: 'Seed Survey', status: 0, survey_description: 'A survey for testing', date_created: Date.current)
#
# survey_question1 = SurveyQuestion.create(survey_id: survey1.id, survey_question_type: 0, display_order: 0, required: true, text: 'Sample text response question')
#
# survey_question2 = SurveyQuestion.create(survey_id: survey1.id, survey_question_type: 1, display_order: 1, required: true, text: 'Sample single answer question')
# survey_question_option21 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 0, text: 'Option 1')
# survey_question_option22 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 1, text: 'Option 2')
# survey_question_option23 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 2, text: 'Option 3')
#
# survey_question3 = SurveyQuestion.create(survey_id: survey1.id, survey_question_type: 2, display_order: 2, required: true, text: 'Sample multiple answer question')
# survey_question_option31 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 0, text: 'Option 1')
# survey_question_option32 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 1, text: 'Option 2')
# survey_question_option33 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 2, text: 'Option 3')
#
# survey_question4 = SurveyQuestion.create(survey_id: survey1.id, survey_question_type: 3, display_order: 3, required: true, text: 'Sample multiple sub-question')
# survey_question_option41 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 0, text: 'Sub-Question 1')
# survey_question_option42 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 1, text: 'Sub-Question 2')
# survey_question_option43 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 2, text: 'Sub-Question 3')
# survey_question_option_ch41 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 0, text: 'Choice 1')
# survey_question_option_ch42 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 1, text: 'Choice 2')
# survey_question_option_ch43 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 2, text: 'Choice 3')
#
# survey2 = Survey.create(login_id: login5.id, survey_name: 'Seed Survey Complete', status: 1, survey_description: 'A complete survey for testing', date_created: Date.current)
#
# survey_question1 = SurveyQuestion.create(survey_id: survey2.id, survey_question_type: 0, display_order: 0, required: true, text: 'Sample text response question')
#
# survey_question2 = SurveyQuestion.create(survey_id: survey2.id, survey_question_type: 1, display_order: 1, required: true, text: 'Sample single answer question')
# survey_question_option21 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 0, text: 'Option 1')
# survey_question_option22 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 1, text: 'Option 2')
# survey_question_option23 = SurveyQuestionOption.create(survey_question_id: survey_question2.id, display_order: 2, text: 'Option 3')
#
# survey_question3 = SurveyQuestion.create(survey_id: survey2.id, survey_question_type: 2, display_order: 2, required: true, text: 'Sample multiple answer question')
# survey_question_option31 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 0, text: 'Option 1')
# survey_question_option32 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 1, text: 'Option 2')
# survey_question_option33 = SurveyQuestionOption.create(survey_question_id: survey_question3.id, display_order: 2, text: 'Option 3')
#
# survey_question4 = SurveyQuestion.create(survey_id: survey2.id, survey_question_type: 3, display_order: 3, required: true, text: 'Sample multiple sub-question')
# survey_question_option41 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 0, text: 'Sub-Question 1')
# survey_question_option42 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 1, text: 'Sub-Question 2')
# survey_question_option43 = SurveyQuestionOption.create(survey_question_id: survey_question4.id, display_order: 2, text: 'Sub-Question 3')
# survey_question_option_ch41 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 0, text: 'Choice 1')
# survey_question_option_ch42 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 1, text: 'Choice 2')
# survey_question_option_ch43 = SurveyQuestionOptionChoice.create(survey_question_id: survey_question4.id, display_order: 2, text: 'Choice 3')
#
# #Survey entry for User 2
# user_survey2 = UserSurvey.create(user_id: user2.id, survey_id: survey1.id, date_completed: DateTime.now, anonymous: false)
# user_survey_response21 = UserSurveyResponse.create(user_survey_id: user_survey2.id, survey_question_id: survey_question1.id, response_text: 'Response to a text field question.')
# user_survey_response22 = UserSurveyResponse.create(user_survey_id: user_survey2.id, survey_question_id: survey_question2.id, response_text: survey_question_option22.display_order.to_s())
# user_survey_response23 = UserSurveyResponse.create(user_survey_id: user_survey2.id, survey_question_id: survey_question3.id, response_text: survey_question_option31.display_order.to_s() + ',' + survey_question_option33.display_order.to_s())
# user_survey_response24 = UserSurveyResponse.create(user_survey_id: user_survey2.id, survey_question_id: survey_question4.id, response_text: survey_question_option_ch43.display_order.to_s() + ',' + survey_question_option_ch42.display_order.to_s() + ',' + survey_question_option_ch41.display_order.to_s())

rapidfire_question_group1 = Rapidfire::Survey.create(name: "Test Survey")

rapidfire_question1 = Rapidfire::Question.create(survey_id: rapidfire_question_group1.id, type: "Rapidfire::Questions::Checkbox", question_text: "Checkbox Question", position: 0, answer_options: "Option 1\r\nOption 2\r\nOption 3")
rapidfire_question2 = Rapidfire::Question.create(survey_id: rapidfire_question_group1.id, type: "Rapidfire::Questions::Date", question_text: "Date Question", position: 1, answer_options: "")
rapidfire_question3 = Rapidfire::Question.create(survey_id: rapidfire_question_group1.id, type: "Rapidfire::Questions::Radio", question_text: "Radio Question", position: 2, answer_options: "Option 1\r\nOption 2\r\nOption 3")
rapidfire_question4 = Rapidfire::Question.create(survey_id: rapidfire_question_group1.id, type: "Rapidfire::Questions::Select", question_text: "Select Question", position: 3, answer_options: "Option 1\r\nOption 2\r\nOption 3")
rapidfire_question5 = Rapidfire::Question.create(survey_id: rapidfire_question_group1.id, type: "Rapidfire::Questions::Numeric", question_text: "Numeric Question", position: 4, answer_options: "")
rapidfire_question6 = Rapidfire::Question.create(survey_id: rapidfire_question_group1.id, type: "Rapidfire::Questions::Long", question_text: "Long Answer Question", position: 5, answer_options: "")
rapidfire_question7 = Rapidfire::Question.create(survey_id: rapidfire_question_group1.id, type: "Rapidfire::Questions::Short", question_text: "Short Answer Question", position: 6, answer_options: "")

entrance_survey = Rapidfire::Survey.create(name: 'NCC Incoming Graduate Survey')
entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please select your program:', position: 0, answer_options: "Master of Business Administration\r\nMaster of Leadership Studies\r\nMaster of Arts in Liberal Arts\r\nMaster of International Business Administration\r\nMaster of Science in Web & Internet Application\r\nMaster of Arts in Education")
entrance_question2 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'What were you doing prior to attending graduate school?', position: 1, answer_options: "Attending undergraduate school\r\nAttending other graduate programs\r\nWorking\r\nUnemployed")
entrance_question3 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Including North Central, how many other graduate programs were you accepted into?', position: 2, answer_options: "1\r\n2\r\n3\r\n4 or more")
entrance_question4 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Was North Central your...', position: 3, answer_options: "First choice\r\nSecond choice\r\nThird choice\r\nFourth choice or lower")
# Start question with sub questions
  entrance_question5 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Advanced degrees were needed to enter my chosen career', position: 4, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
  entrance_question6 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Advanced degrees were need to advance my current career', position: 5, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
  entrance_question7 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Career changer', position: 6, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
  entrance_question8 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Increased earning potential', position: 7, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
  entrance_question9 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Personal reasons', position: 8, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
  entrance_question10 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Difficulty in the job market', position: 9, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
  entrance_question11 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Wanted to continue my education', position: 10, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
  entrance_question12 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Societal reasons', position: 11, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
  entrance_question13 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How important was the following in choosing to continue with an advanced degree? Other', position: 12, answer_options: "Not important\r\nSomewhat important\r\nVery important\r\nNot applicable")
# End multi question with sub questions
entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Do you have a partner?', position: 13, answer_options: "Yes\r\nNo")
entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'How many children do you have?', position: 14, answer_options: "0\r\n1\r\n2\r\n3\r\n4\r\n5 or more")
# Start question with sub questions
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Academic ability', position: 15, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Writing ability', position: 16, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Ability to work in teams', position: 17, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Creativity', position: 18, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Desire for achievement', position: 19, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Emotional health', position: 20, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Leadership skills', position: 21, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Intellectual confidence', position: 22, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
  entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'Please rate yourself on your: Social confidence', position: 23, answer_options: "Poor\r\nFair\r\nAverage\r\n\Very Good\r\nExcellent")
# End multi question with sub questions
entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Checkbox', question_text: 'Which of the following were factors in choosing to attend North Central College for a graduate degree?', position: 24, answer_options: "Reputation of program\r\nSpecialization matched my interests\r\nRecommendation of friends, family, or acquaintances\r\nRecommendation from someone in my professional network or work colleague\r\nCampus visit\r\nLocation\r\nOther")
entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Checkbox', question_text: 'As you begin your graduate career, what personal factors (if any) are you concerned with?', position: 25, answer_options: "Finances\r\nWork/Life balance\r\n Course-load\r\nAcademic requirements of program")
entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Radio', question_text: 'What are your current plans after you obtain your advanced degree?', position: 26, answer_options: "Additional graduate work\r\nEmployment\r\nOther")
entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Long', question_text: 'What are you most looking forward to about your chosen program?', position: 27, answer_options: "")
entrance_question1 = Rapidfire::Question.create(survey_id: entrance_survey.id, type: 'Rapidfire::Questions::Long', question_text: 'What are you most worried about in terms of the program?', position: 27, answer_options: "")

rapidfire_attempt1 = Rapidfire::Attempt.create(survey_id: rapidfire_question_group1.id, user_id: user2.id)

rapidfire_answer11 = Rapidfire::Answer.create(attempt_id: rapidfire_attempt1.id, question_id: rapidfire_question1.id, answer_text: "Option 1/r/nOption 3")
rapidfire_answer12 = Rapidfire::Answer.create(attempt_id: rapidfire_attempt1.id, question_id: rapidfire_question2.id, answer_text: "12/12/12")
rapidfire_answer13 = Rapidfire::Answer.create(attempt_id: rapidfire_attempt1.id, question_id: rapidfire_question3.id, answer_text: "Option 2")
rapidfire_answer14 = Rapidfire::Answer.create(attempt_id: rapidfire_attempt1.id, question_id: rapidfire_question4.id, answer_text: "Option 3")
rapidfire_answer15 = Rapidfire::Answer.create(attempt_id: rapidfire_attempt1.id, question_id: rapidfire_question5.id, answer_text: "")
rapidfire_answer16 = Rapidfire::Answer.create(attempt_id: rapidfire_attempt1.id, question_id: rapidfire_question6.id, answer_text: "Loooooooooooooooooong Answer is Loooooooooooong")
rapidfire_answer17 = Rapidfire::Answer.create(attempt_id: rapidfire_attempt1.id, question_id: rapidfire_question7.id, answer_text: "Short Answer")


#Giving Back for User 2
giving_back2 = GivingBack.create(user_id: user2.id, company_info_id: company_info1.id, subject: 'Internship', position: 'Summer Intern', description: 'A summer internship in tech support!', requirements: 'None really.', approved: false, completed: false, giving_back_type: 0, contact_first_name: 'Bill', contact_last_name: 'Gates', contact_email: 'BillGates@Microsoft.com')
