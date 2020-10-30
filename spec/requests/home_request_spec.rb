require 'rails_helper'

RSpec.describe 'Home', type: :request do
  let(:user) { create(:user) }

  context 'when not logged in' do
    it 'renders the login page' do
      get '/'

      expect(response).to be_successful
      expect(response).to render_template('devise/sessions/new')
    end
  end

  context 'when logged in' do
    before do
      sign_in user
    end

    it 'renders the orders page' do
      get '/'

      expect(response).to be_successful
      expect(response).to render_template('orders/index')
    end
  end
end
