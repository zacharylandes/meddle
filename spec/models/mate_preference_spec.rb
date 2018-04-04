require 'rails_helper'

RSpec.describe MatePreference, type: :model do
  context "with valid values" do
    it "creates a mate_preference instance" do
      dater = create(:user)
      mate_trait = create(:mate_preference, user: dater)
      expect(mate_trait.user.id).to eq(dater.id)

      expect(mate_trait.min_height).to eq(60)
      expect(mate_trait.max_height).to eq(70)
      expect(mate_trait.smoker).to eq("socially")
      expect(mate_trait.alcohol).to eq("never")
      expect(mate_trait.ethnicity).to eq("unknown")
      expect(mate_trait.education).to eq(false)
      # expect(mate_trait.body_type).to eq(["curvy", "beefy", "slender"])
      expect(mate_trait.zip_radius).to eq(25)
      expect(mate_trait.religion).to eq("Some Religion")
      expect(mate_trait.religiosity).to eq(1)
      expect(mate_trait.political_leaning).to eq(0)
      expect(mate_trait.politicalness).to eq(1)
      expect(mate_trait.has_kids).to eq(true)
      expect(mate_trait.wants_kids).to eq("has_kids")
      expect(mate_trait.has_pets).to eq("any")
      expect(mate_trait.orientation).to eq("straight")
      expect(mate_trait.gender).to eq("female")


    end
  end


end
