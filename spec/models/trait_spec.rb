require 'rails_helper'

RSpec.describe Trait, type: :model do

  context "with valid values" do
    it "creates a trait instance" do
      user = create(:user)
      dater = create(:dater, user_id:user.id)
      trait = create(:trait, dater_id: dater.id)
      expect(trait.dater_id).to eq(dater.id)
      expect(trait.height).to eq(70)
      expect(trait.smoker).to eq("never")
      expect(trait.alcohol).to eq("never")
      expect(trait.ethnicity).to eq("dont_care")
      expect(trait.education).to eq(true)
      expect(trait.body_type).to eq("any")
      expect(trait.occupation).to eq("I Work")
      expect(trait.zip).to eq(80203)
      expect(trait.religion).to eq("dont_care")
      expect(trait.religiosity).to eq("devout")
      expect(trait.political_leaning).to eq("left_leaning")
      expect(trait.politicalness).to eq("why_are_we_talking_about_this")
      expect(trait.has_kids).to eq(false)
      expect(trait.wants_kids).to eq(false)
      expect(trait.has_pets).to eq(false)
      expect(trait.orientation).to eq("straight")
      expect(trait.gender).to eq("female")
      expect(trait.other).to eq("Some other preference that they really need to say")
    end
  end

end
