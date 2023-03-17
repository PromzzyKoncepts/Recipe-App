require 'rails_helper'

RSpec.describe RecipeItem, type: :model do
  describe 'associations' do
    it 'has many RecipeFood' do
      assc = described_class.reflect_on_association(:recipe_foods)
      expect(assc.macro).to eq :has_many
    end

    it 'belongs to User' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
