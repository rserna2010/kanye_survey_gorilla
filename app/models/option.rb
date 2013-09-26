class Option < ActiveRecord::Base
  attr_accessible :content

  belongs_to :question
  has_many :votes
end
