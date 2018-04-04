class Pool < ApplicationRecord
  belongs_to :dater, class_name: "User"
  belongs_to :match, class_name: "User"
end
