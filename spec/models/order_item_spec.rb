require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  describe 'associations' do
    it { should belong_to(:order) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:drink_name) }
    it { is_expected.to validate_presence_of(:person_name) }
  end
end
