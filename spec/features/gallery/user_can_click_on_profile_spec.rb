# require 'rails_helper'

# describe 'gallery' do
#   it 'user can click on a profile ' do

#     user_1 = create(:user)
#     user_2 = create(:user, f_name:"user_2")

#    dater_1= Dater.create(id: user_1.id, user_id: 1,f_name: user_1.f_name, l_name: user_1.l_name)
#    dater_2= Dater.create(id: user_2.id, user_id: 1,f_name: user_2.f_name, l_name: user_2.l_name)

#     allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)
    
    
#     visit "/users"

    
#     within ('.dater-card') do 
#         click_on('.card-img-top')
#     end
#     save_and_open_page

#     expect(current_path).to eq(user_path(user_2))

    
#     end

# end
