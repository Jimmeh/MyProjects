class Checkout
  def initialize rules
    @rules = rules
    @total = 0
  end
  def scan sku
    @total += @rules[sku]      
  end
  def total
    @total
  end
end