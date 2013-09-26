require 'spec_helper'

describe SurveysController do 
  context "Form" do 
    it "It should redirect to new form page" do
      get root_path
      expect(response).to render_template("new")
    end
  end


end
