module PaymentGateway
  class FindPaymentRequests
    def call
      PaymentRequest.all.to_a
    end
  end
end
