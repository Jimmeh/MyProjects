require 'src/checkout.rb'

describe Checkout, " - When scanning multiple items without discounts" do
  include CheckoutHelper
  
  it "should have total of 85 after scanning AB" do
    total_after_scanning("AB").should == 85
  end
  
  it "should have total of 35 after scanning CD" do
    total_after_scanning("CD").should == 35
  end
  
  it "should have total of 120 after scanning ABCD" do
    total_after_scanning("ABCD").should == 120
  end
  
  it "should have total of 100 after scanning AA" do
    total_after_scanning("AA").should == 100
  end
end