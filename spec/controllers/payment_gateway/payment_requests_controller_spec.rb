require 'rails_helper'

module PaymentGateway
  RSpec.describe PaymentGateway::PaymentRequestsController, type: :controller do
    describe 'GET index' do
      let!(:request) { create(:payment_request) }

      it 'returns a successful response' do
        get :index
        expect(response).to be_successful
      end
    end
  end
end
