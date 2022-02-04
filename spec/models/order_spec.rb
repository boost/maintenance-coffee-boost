require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'associations' do
    it { should have_many(:order_items) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
