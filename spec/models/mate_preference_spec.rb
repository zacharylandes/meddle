require 'rails_helper'

RSpec.describe MatePreference, type: :model do

  context "with valid values" do
    it "creates a mate_preference instance" do
      user = create(:user)
      dater =  create(:dater, user_id: user.id)
      mate_trait = create(:mate_preference, dater_id: dater.id)
      expect(mate_trait.dater_id).to eq(dater.id)
      expect(mate_trait.min_height).to eq(60)
      expect(mate_trait.max_height).to eq(70)
      expect(mate_trait.smoker).to eq("never")
      expect(mate_trait.alcohol).to eq("dont_care")
      expect(mate_trait.ethnicity).to eq(0)
      expect(mate_trait.education).to eq(false)
      expect(mate_trait.zip_radius).to eq(25)
      expect(mate_trait.religion).to eq("dont_care")
      expect(mate_trait.religiosity).to eq('occasionally')
      expect(mate_trait.political_leaning).to eq("not_important")
      expect(mate_trait.politicalness).to eq("why_are_we_talking_about_this")
      expect(mate_trait.has_kids).to eq(true)
      expect(mate_trait.wants_kids).to eq("wants_them")
      expect(mate_trait.orientation).to eq("straight")
      expect(mate_trait.gender).to eq("female")

    end
  end


end
