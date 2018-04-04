class User < ApplicationRecord

<<<<<<< HEAD
  has_many :daters, class_name: "DaterBacker", foreign_key: :dater_id
  has_many :backers, class_name: "DaterBacker", foreign_key: :backer_id
  has_many :mate_preferences, dependent: :destroy
  has_many :traits, dependent: :destroy
  has_many :comments, through: :dater_backer, dependent: :destroy
  has_many :backer_evals, through: :dater_backer, dependent: :destroy


=======
  has_and_belongs_to_many :dater_backers
  has_many :mate_preferences
  has_many :traits
  has_many :comments, through: :dater_backer
  # has_many :backer_evals, through: :dater_backer
>>>>>>> 550c753ee7adf8164217688ff9be2a2a467d7de5


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
