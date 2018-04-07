require 'rails_helper'

RSpec.describe Trait, type: :model do

  context "with valid values" do
    it "creates a trait instance" do
      dater = create(:user)
      trait = create(:trait, user: dater)
      expect(trait.user.id).to eq(dater.id)
      expect(trait.height).to eq(70)
      expect(trait.smoker).to eq("socially")
      expect(trait.alcohol).to eq("socially")
      expect(trait.ethnicity).to eq("unknown")
      expect(trait.education).to eq("Higher Education")
      expect(trait.body_type).to eq("any")
      expect(trait.occupation).to eq("I Work")
      expect(trait.zip).to eq(80210)
      expect(trait.religion).to eq("Some Religion")
      expect(trait.religiosity).to eq(2)
      expect(trait.political_leaning).to eq(2)
      expect(trait.politicalness).to eq(1)
      expect(trait.has_kids).to eq(false)
      expect(trait.wants_kids).to eq(false)
      expect(trait.has_pets).to eq("none")
      expect(trait.orientation).to eq("queer")
      expect(trait.gender).to eq("non_binary")
      expect(trait.other).to eq("Some other preference that they really need to say")

    end
  end

  # test that I can do user.smoker?

#Sad path? handle wrong datatypes on feature tests?
end
