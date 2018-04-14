class Personality < ApplicationRecord
  belongs_to :dater
  belongs_to :backer

def self.avg
  # binding.
end

end
