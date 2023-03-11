module PaymentGateway
  class PaymentRequestsController < ApplicationController
    def index
      FindPaymentRequests.new.call
    end
  end
end
