class Comment < ApplicationRecord
  belongs_to :dater
  belongs_to :backer
  belongs_to :question

  validates_presence_of :comment

end
