class DaterBacker < ApplicationRecord
<<<<<<< HEAD

  belongs_to :dater, class_name: "User"
  belongs_to :backer, class_name: "User"

  has_many :comments
  has_many :backer_evals

  validates_presence_of :dater_id
  validates_presence_of :backer_id

end


#  thoughts -- maybe make a user table as well as a Backer table -- save so that they each have the same UID? that way you can pass the UID to different tables and avoid the self-referencing mess
=======
  has_and_belongs_to_many :users
  has_many :comments
  # has_many :backer_evals

end
>>>>>>> 550c753ee7adf8164217688ff9be2a2a467d7de5
