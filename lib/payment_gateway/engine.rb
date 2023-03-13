module PaymentGateway
  class Engine < ::Rails::Engine
    isolate_namespace PaymentGateway

    config.generators do |g|
      g.test_framework :rspec
    end

    config.paths["db/migrate"].unshift(self.root.to_s + "/db/payment_gateway_migrate")
  end
end
