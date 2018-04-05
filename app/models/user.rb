class User < ApplicationRecord

has_many :daters
has_many :backers
has_many :dater_backers, through: :daters
has_many :dater_backers, through: :backers


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.auth_name = auth.info.name
      user.f_name = auth.info.first_name
      user.l_name = auth.info.last_name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
      Dater.create!(user_id: user.id, f_name: user.f_name, l_name: user.l_name)
      Backer.create!(user_id: user.id, f_name: user.f_name, l_name: user.l_name)
    end
  end


end
