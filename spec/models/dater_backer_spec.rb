require 'rails_helper'

RSpec.describe DaterBacker, type: :model do

  context "with valid info" do
    it "creates a dater_backer" do
      dater = create(:user)
      backer = create(:user)
      dater_backer = DaterBacker.new
      dater_backer.dater_id = dater.id
      dater_backer.backer_id = backer.id
      expect(dater_backer.dater).to eq(dater)
      expect(dater_backer.backer).to eq(backer)
    end
  end

end
