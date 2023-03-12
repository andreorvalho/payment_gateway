require 'rails_helper'

RSpec.describe PaymentGateway::PaymentRequestsController, type: :controller do
  describe 'GET index' do
    let!(:request) { create(:payment_request) }
    let(:customer_data) { { name: 'Andre', place_of_birth: "Portugal", date_of_birth: Time.now - 36.years } }

    it 'returns a successful response' do
      expect_any_instance_of(::CustomerData::CustomerFacade)
        .to receive(:information_for_payments)
        .and_return(customer_data)

      get :index
      customer_data.keys.each do |key|
        expect(@controller.view_assigns["payments"].keys).to include(key)
      end

      request.as_json.keys.each do |key|
        expect(@controller.view_assigns["payments"].keys).to include(key)
      end

      expect(response).to be_successful
    end
  end
end
