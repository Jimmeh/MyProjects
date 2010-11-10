require 'src/checkout.rb'

module CheckoutHelper
  def total_after_scanning(skus)
    checkout = Checkout.new({"" => 0, "A" => 50, "B" => 35, "C" => 20, "D" => 15})
    skus.split(//).each { |sku| checkout.scan(sku) }
    checkout.total
  end
end