require "spec_helper"

describe Survey do 
    let(:valid_survey)       {Survey.create(title: "KANYES FAVORITE SURVEY!")}
    let(:valid_question_one) {Question.create(prompt: "What's your favorite album")}
    let(:valid_question_two) {Question.create(prompt: "Why is Kanye so awesome?!")}

    context "Survey" do 
      it 'User can create a survey' do 
        valid_survey.should be_valid
      end

      it "Survey can have many questions" do 
         valid_survey.questions << valid_question_one
         valid_survey.questions << valid_question_two
         valid_survey.questions.count == 2
      end

    end
  end
