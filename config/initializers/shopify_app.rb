ShopifyApp.configure do |config|
  config.api_key = "06d4d65945b994f96c01258d097e8ec7"
  config.secret = "06d4d65945b994f96c01258d097e8ec7"
  config.scope = "read_orders, read_products, read_customers, read_analytics"
  config.embedded_app = true


   config.webhooks = [
    {topic: 'fulfillments/create', address: 'https://unai.unai.ultrahooks.com'}
  ]
end
