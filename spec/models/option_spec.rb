require "spec_helper"


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
