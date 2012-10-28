class Answer < ActiveRecord::Base
  attr_accessible :description, :question_id, :user_id

  belongs_to :user
  belongs_to :question
end
