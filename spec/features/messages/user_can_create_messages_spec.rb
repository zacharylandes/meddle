require 'rails_helper'

describe 'messages' do
  it 'can create a message from user  show' do

    user_1 = create(:user, remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    user_2 = create(:user, remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")

   dater_1= Dater.create(id: user_1.id, user_id:user_1.id ,f_name: user_1.f_name, l_name: user_1.l_name)
   dater_2= Dater.create(id: user_2.id, user_id: user_2.id,f_name: user_2.f_name, l_name: user_2.l_name)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user_1)
    

    trait1 = Trait.create(dater_id: dater_1.id, zip:80203)
    trait2 = Trait.create(dater_id: dater_2.id, zip:80203)
    
    dater_1.matches.create(dater_id:user_1.id, match_id:2)

    5.times do 
     Question.create(question: "yo")
    end

    visit "/users/2"

    
    click_on "Send Message"


    fill_in 'subject', :with => "ride to the party"
    fill_in 'body', :with => "gimme a ride dawg"

    click_on 'Send Message'


    expect(page).to have_content("ride to the party")
    expect(user_2.mailbox.conversations.count).to eq(1)
    end

end
