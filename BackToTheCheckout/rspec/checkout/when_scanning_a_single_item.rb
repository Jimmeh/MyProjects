require 'src/checkout.rb'

describe Checkout, " - When scanning a single item" do
  include CheckoutHelper
  
  it "should have zero total after scanning empty string" do
    total_after_scanning("").should == 0  
  end
  
  it "should have total of 50 after scanning an A" do
    total_after_scanning("A").should == 50
  end

  it "should have total of 35 after scanning a B" do
    total_after_scanning("B").should == 35
  end  

  it "should have total of 20 after scanning a C" do
    total_after_scanning("C").should == 20
  end

  it "should have total of 15 after scanning a D" do
    total_after_scanning("D").should == 15
  end
end