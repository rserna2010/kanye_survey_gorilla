class Vote < ActiveRecord::Base
  attr_accessible :option_id
  belongs_to :option
end
