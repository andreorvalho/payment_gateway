module PaymentGateway
  class FindPaymentRequests
    def call
      PaymentRequest.all
    end
  end
end
