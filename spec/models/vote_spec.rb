require "spec_helper"

describe Vote do 
    let(:valid_vote) {Vote.create(option_id: 1)}

    context "Vote" do 
      it "User should be able to vote" do 
        valid_vote.should be_valid
      end
    end

  end
