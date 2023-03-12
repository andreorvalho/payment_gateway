module PaymentGateway
  class FindPaymentRequests
    def call
      PaymentRequest.all.to_a.inject({}) do |response_hash, payment_request|
        facade = ::CustomerData::CustomerFacade.new(payment_request.customer_id)
        customer_information = facade.information_for_payments
        response_hash[payment_request.id] = payment_request.as_json.merge(customer_information)
      end
    end
  end
end
