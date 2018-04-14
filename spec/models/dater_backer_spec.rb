require 'rails_helper'

RSpec.describe DaterBacker, type: :model do

  context "with valid info" do
    it "creates a dater_backer" do
      u1 = create(:user)
      u2 = create(:user)
      dater = Dater.create(user_id: u1.id)
      backer = Backer.create(user_id: u2.id)
      dater_backer = DaterBacker.create!(backer_id:backer.id, dater_id:dater.id)
      dater_backer.dater_id = dater.id
      dater_backer.backer_id = backer.id
      expect(dater_backer.dater).to eq(dater)
      expect(dater_backer.backer).to eq(backer)
    end
  end

end
