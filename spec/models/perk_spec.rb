require 'rails_helper'

describe Perk do
  describe 'instantiation' do
    let!(:perk) { build(:perk) }

    it 'instantiates a perk' do
      expect(perk.class.name).to eq("Perk")
    end
  end
end