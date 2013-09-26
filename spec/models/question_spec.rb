require "spec_helper"

  

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



