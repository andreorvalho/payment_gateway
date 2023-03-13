module PaymentGateway
  class PaymentRequest < PaymentGatewayRecord
    self.table_name = "payment_requests"
  end
end
