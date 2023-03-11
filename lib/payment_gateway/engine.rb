module PaymentGateway
  class Engine < ::Rails::Engine
    isolate_namespace PaymentGateway

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
