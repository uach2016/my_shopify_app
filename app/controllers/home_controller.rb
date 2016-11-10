class HomeController < ShopifyApp::AuthenticatedController

  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @customers = ShopifyAPI::Customer.find(:all)
    @shop = ShopifyAPI::Shop.current

    all_orders
   end

   def all_orders	
   		@orders = [1]
   		@customers.each do |customer| 
     	@orders.push(customer.orders_count)
      end
     	sum_orders
   end

   def sum_orders
    @sum_orders = @orders.reduce(:+)
   end

end

