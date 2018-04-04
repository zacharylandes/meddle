class DaterBacker < ApplicationRecord

  belongs_to :dater, class_name: "User"
  belongs_to :backer, class_name: "User"

  has_many :comments
  has_many :backer_evals

  validates_presence_of :dater_id
  validates_presence_of :backer_id

end


#  thoughts -- maybe make a user table as well as a Backer table -- save so that they each have the same UID? that way you can pass the UID to different tables and avoid the self-referencing mess
