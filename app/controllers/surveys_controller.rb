class SurveysController < ApplicationController 
  def index
    @all_surveys = Survey.all 
  end

  def new
    @survey = Survey.new
    @question = Question.new
    @option = Option.new
   
    2.times{@survey.questions << @question}
    3.times{@question.options << @option}
    
  end

  def create
    Survey.create(params[:survey])
    redirect_to surveys_path
  end

  def show
    @current_survey = Survey.find(params[:id])
  end

end



