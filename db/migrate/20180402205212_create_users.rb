class CreateUsers < ActiveRecord::Migration[5.1]
  def change

    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :auth_name
      t.string :email
      t.string :f_name
      t.string :l_name
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
