FactoryBot.define do
  factory :user do
    provider "MyString"
    uid "MyString"
    f_name "MyString"
    l_name 'Mystring'
    email "email@email.com"
    oauth_token "MyString"
    oauth_expires_at "2018-04-02 14:52:12"
    remote_image_url =  "https://s3.amazonaws.com/pytdating/p3.jpeg"

  end
end
