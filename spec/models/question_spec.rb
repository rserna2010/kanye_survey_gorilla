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

  describe Question do 
    let(:valid_question)    {Question.create(prompt: "What's your favorite Kanye song?!")}
    let (:valid_option_one) {Option.create(content: "Black Skinhead")}
    let (:valid_option_two) {Option.create(content: "Gold Diggers")}

    context "Question" do 
      it "User should be able to create a question" do 
        valid_question.should be_valid
      end
    

     it "Question can have many options" do 
         valid_question.options << valid_option_one
         valid_question.options << valid_option_two
         valid_question.options.count == 2
      end
    
    end
  end

  describe Option do 
    let (:valid_option) {Option.create(content: "I AM A GOD")}
    let(:valid_vote_one) {Vote.create(option_id: 1)}
    let(:valid_vote_two) {Vote.create(option_id: 1)}

    context "Option" do 
      it "User should be able to create an option" do 
        valid_option.should be_valid
      end


     it "Option can have many votes" do 
         valid_option.votes << valid_vote_one
         valid_option.votes << valid_vote_two
         valid_option.votes.count == 2
      end

    end
  end


  describe Vote do 
    let(:valid_vote) {Vote.create(option_id: 1)}

    context "Vote" do 
      it "User should be able to vote" do 
        valid_vote.should be_valid
      end
    end

  end
