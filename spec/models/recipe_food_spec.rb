require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  describe 'associations' do
    it 'belongs to Recipe' do
      assc = described_class.reflect_on_association(:recipe_item)
      expect(assc.macro).to eq :belongs_to
    end

    it 'belongs to Food' do
      assc = described_class.reflect_on_association(:food)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
