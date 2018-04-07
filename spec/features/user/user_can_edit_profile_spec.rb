require 'rails_helper'
describe 'user edit page' do
  it 'can update profile ' do
    user = create(:user, f_name:"zach")

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit "/dashboard/#{user.id}"
    save_and_open_page
    page.attach_file('user[image]', Rails.root + 'app/assets/images/pytlogo.png')
    
    click_on 'Update'

    expect(current_path).to eq(user_path(user))
    expect(user.image).to be_truthy
  end
end
