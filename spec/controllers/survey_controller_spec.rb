require 'spec_helper'

describe SurveysController do 
  let(:survey) {Survey.create(title: "KANYES FAVORITE SURVEY!")}
  
  context "GET index" do 
    it "Should render index template" do 
      get :index
      expect(response).to render_template("index")
    end

    it "Should render all survey questions" do  
      visit surveys_path
      save_and_open_page
      page.should have_content("Kanyevey")
    end



  end

end
