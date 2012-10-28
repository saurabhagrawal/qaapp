class Answer < ActiveRecord::Base
  attr_accessible :description, :question_id, :user_id

  acts_as_votable

  belongs_to :user
  belongs_to :question
end
