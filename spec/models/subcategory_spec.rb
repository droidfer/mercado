require 'rails_helper'

RSpec.describe Subcategory, type: :model do
  context 'validate params' do
    it 'Valid company' do
      expect(FactoryBot.build(:subcategory)).to be_valid
    end

    it 'In-valid company due nil name' do
      expect(FactoryBot.build(:subcategory, name: nil)).to_not be_valid
    end
  end
end
