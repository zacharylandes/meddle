require 'rails_helper'
describe 'user edit page' do
  it 'can update profile ' do
    user = create(:user, f_name:"zach", remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    user2 = create(:user, f_name:"zach", remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    dater = create(:dater, user_id:user.id)
    
    trait = create(:trait, dater_id:dater.id)
    backer = create(:backer, user_id:user2.id, f_name:"zach")
    mp= MatePreference.create(dater_id:dater.id)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    allow_any_instance_of(ApplicationController).to receive(:current_backer).and_return(backer)

    backer.daters << dater
    visit "/users/#{user.id}"
    
    page.attach_file('user[image]', Rails.root + 'app/assets/images/pytlogo.png')
    
    within('.edit-profile') do 
    click_on 'Update'
    end

    expect(current_path).to eq(user_path(user))
    expect(user.image).to be_truthy
  end
end
