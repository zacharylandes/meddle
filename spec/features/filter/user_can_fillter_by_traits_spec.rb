require 'rails_helper'
describe 'gallery  page' do

before(:each) do 
    user1 = create(:user, f_name:"zach", remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    user2 = create(:user, f_name:"joan", remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    user3 = create(:user, f_name:"bob", remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    user4 = create(:user, f_name:"tan", remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")
    user5 = create(:user, f_name:"sam", remote_image_url:"https://s3.amazonaws.com/pytdating/p3.jpeg")

    dater1= create(:dater, user_id: user1.id)
    dater2= create(:dater, user_id: user2.id)
    dater3= create(:dater, user_id: user3.id)
    dater4= create(:dater, user_id: user4.id)
    dater5= create(:dater, user_id: user5.id)
    Trait.create(dater_id:dater1.id, zip:80203)
    Trait.create(dater_id:dater2.id, zip:80203)
    Trait.create(dater_id:dater3.id, zip:80203)
    Trait.create(dater_id:dater4.id, zip:80203)
    Trait.create(dater_id:dater5.id, zip:80203)
    
end
it 'can filter gallery by alcohol ' do

    trait2 = create(:trait, dater_id: Dater.second.id, alcohol:2)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(User.first)

    visit "/users"
    select "Drinker", :from => "alcohol"

    expect(page).to_not have_content('bob')
    expect(page).to have_content('zach')
  end
  
  it 'can filter gallery by politicalness' do
    trait1 = create(:trait, dater_id: Dater.first.id, politicalness:3)

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(User.first)

    visit "/users"
    select "Lets do this", :from => "politicalness"

    expect(page).to_not have_content('bob')
    expect(page).to have_content('zach')
  end

  it 'can filter gallery by religiosity' do
    trait1 = create(:trait, dater_id: Dater.first.id, religiosity:2)
    trait1 = create(:trait, dater_id: Dater.first.id, gender:2)
    trait1 = create(:trait, dater_id: Dater.first.id, ethnicity:1)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(User.first)

    visit "/users"
    select "Devout", :from => "religiosity"
    select "Non binary", :from => "gender"
    select "Caucasian", :from => "ethnicity"
    

    expect(page).to_not have_content('bob')
    expect(page).to have_content('zach')
    expect(page).to_not have_content('joan')
  end
end
