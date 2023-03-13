module PaymentGateway
  class PaymentGatewayRecord < ApplicationRecord
    self.abstract_class = true

    connects_to database: { writing: :payment_gateway, reading: :payment_gateway  }
  end
end
