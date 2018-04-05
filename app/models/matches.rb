class Matches < ApplicationRecord

  belongs_to :dater, class_name: "Dater", foreign_key: :dater_id
  belongs_to :match, class_name: "Dater", oreign_key: :dater_id



end
