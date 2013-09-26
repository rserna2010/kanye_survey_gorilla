class Question < ActiveRecord::Base
  attr_accessible :prompt, :options_attributes

  belongs_to :survey
  has_many :options
  accepts_nested_attributes_for :options
end
