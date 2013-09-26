class Survey < ActiveRecord::Base
  attr_accessible :title, :questions_attributes, :options_attributes
  has_many :questions
  has_many :options, through: :questions
  accepts_nested_attributes_for :questions, :options
  
end
