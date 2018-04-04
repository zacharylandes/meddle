class User < ApplicationRecord

  has_many :daters, class_name: "DaterBacker", foreign_key: :dater_id
  has_many :backers, class_name: "DaterBacker", foreign_key: :backer_id
  has_many :mate_preferences
  has_many :traits
  has_many :comments, through: :dater_backer
  # has_many :backer_evals, through: :dater_backer


    def self.from_omniauth(auth)
        where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
          user.provider = auth.provider
          user.uid = auth.uid
          user.name = auth.info.name
          user.oauth_token = auth.credentials.token
          user.oauth_expires_at = Time.at(auth.credentials.expires_at)
          user.save!
        end
      end

end
