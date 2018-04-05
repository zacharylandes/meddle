require 'rails_helper'

RSpec.describe User, type: :model do

  context "with valid credentials" do
    it "creates a user" do
      user = create(:user)

      expect(user.id).to eq(User.last.id)
    end
  end 
end
