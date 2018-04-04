class Comment < ApplicationRecord
<<<<<<< HEAD
  belongs_to :dater
  belongs_to :backer

  validates_presence_of :comment

  # def comments
  #   Comment.find_by_sql([" SELECT comments.* FROM comments INNER JOIN dater_backers ON comments.dater_backer_id = dater_backers.id WHERE (dater_backers.dater_id = ? OR dater_backers.backer_id = ?)", 16])
  # end
=======
  belongs_to :dater_backer


  validates_presence_of :comment
>>>>>>> updated with figaro and google keys

end
