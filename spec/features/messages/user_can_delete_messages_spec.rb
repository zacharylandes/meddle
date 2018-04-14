require 'rails_helper'

describe 'messages' do
  it 'can delete a message' do

    user_1 = create(:user, remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    user_2 = create(:user, remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")

   dater_1= Dater.create(id: user_1.id, user_id: user_1.id,f_name: user_1.f_name, l_name: user_1.l_name)
   dater_2= Dater.create(id: user_2.id, user_id: user_2.id,f_name: user_2.f_name, l_name: user_2.l_name)

 
   trait1 = Trait.create!(dater_id: dater_1.id, zip: 80203)
   trait2 = Trait.create(dater_id: dater_2.id, zip:80203)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)
      
    5.times do 
      Question.create(question: "yo")
    end
    dater_1.matches.create(dater_id:user_1.id, match_id:2)
    
    visit "/users/2"

    
    click_on "Send Message"
    
    
    fill_in 'subject', :with => "ride to the party"
    fill_in 'body', :with => "gimme a ride dawg"
    
    click_on 'Send Message'
    
    
    visit '/conversations/1'
    

    click_on 'Delete'

    expect(user_2.mailbox.conversations.count).to eq(0)


    end

end
