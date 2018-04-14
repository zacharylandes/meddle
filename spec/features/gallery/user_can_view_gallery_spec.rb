require 'rails_helper'

describe 'gallery' do
  it 'user can view gallery' do

    user_1 = create(:user, remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    user_2 = create(:user, f_name:"user_2")
    user_3 = create(:user, f_name:"user_3")
    user_4 = create(:user, f_name:"user_4")

    dater_1= Dater.create(id: user_1.id, user_id: 1,f_name: user_1.f_name, l_name: user_1.l_name)
    dater_2= Dater.create(id: user_2.id, user_id: 1,f_name: user_2.f_name, l_name: user_2.l_name)

    dater_3= Dater.create(id: user_3.id, user_id: 1,f_name: user_3.f_name, l_name: user_3.l_name)
    dater_4= Dater.create(id: user_4.id, user_id: 1,f_name: user_4.f_name, l_name: user_4.l_name)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)


    visit "/users"


    expect(page).to have_content("user_2")
    expect(page).to have_content("user_3")
    expect(page).to have_content("user_4")
    
    end

end
