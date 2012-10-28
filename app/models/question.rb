class Question < ActiveRecord::Base
  attr_accessible :description, :last_activity_time, :last_edit_time, :title, :user_id

  validates :title, :presence => true, :length => { :minimum => 5}
  validates :description, :presence => true

  acts_as_votable

  belongs_to :user
  has_many :answers
  default_scope :order => 'questions.last_activity_time DESC'
end
