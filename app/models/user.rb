class User < ApplicationRecord


  has_many :dater_backers
  has_many :daters, through: :dater_backers, class_name: "User"
  has_many :backers, through: :dater_backers, class_name: "User"

  has_many :pools
  has_many :daters, through: :pools, class_name: "User"
  has_many :matches, through: :pools, class_name: "User"
  has_many :mate_preferences, dependent: :destroy
  has_many :traits, dependent: :destroy
  has_many :comments, through: :dater_backer, dependent: :destroy
  has_many :backer_evals, through: :dater_backer, dependent: :destroy




  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.f_name = auth.info.first_name
      user.l_name = auth.info.last_name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end


  def backers
    User.find_by_sql(["SELECT dater_backers.backer_id, users.* FROM dater_backers INNER JOIN users ON dater_backers.backer_id = users.id WHERE dater_id = ?", curent_user.id])
  end

  def daters
    User.find_by_sql(["SELECT dater_backers.dater_id, users.* FROM dater_backers INNER JOIN users ON dater_backers.dater_id = users.id WHERE backer_id = ?", current_user.id])
  end

  def pool
    User.find_by_sql(["SELECT pools.match_id, users.* FROM pools INNER JOIN users ON pools.match_id = users.id WHERE dater_id = ?", current_user.id])
  end



end
