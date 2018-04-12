require 'rails_helper'

RSpec.describe User, type: :model do

  context "with valid credentials" do
    it "creates a user" do
      user = create(:user)

      expect(user.id).to eq(User.last.id)
    end
  end

  context "User responds to other tables" do

    it "responds to " do
      user = build(:user)
      expect(user).to respond_to(:daters)
      expect(user).to respond_to(:backers)
      expect(user).to respond_to(:dater_backers)
      expect(user).to respond_to(:mate_preference)
      expect(user).to respond_to(:trait)
      expect(user).to respond_to(:trait)
    end
  end


end
