require 'src/stack.rb'
require 'src/underflow_error.rb'
require 'src/overflow_error.rb'

describe Stack do 
  before :each do
    @stack = Stack.new 2
  end

  it "should have size zero when created" do
    @stack.size.should == 0
  end

  it "should have size 1 after a push" do
    @stack.push 0
    @stack.size.should == 1
  end

  it "should have size 0 after a push then a pop" do
    @stack.push 0
    @stack.pop
    @stack.size.should == 0
  end

  it "should throw UnderflowError if pop called on empty stack" do
    lambda{ @stack.pop }.should raise_error UnderflowError
  end

  it "should throw OverflowError if push called passed capacity" do
    @stack.push 0
    @stack.push 1
    lambda{@stack.push 2}.should raise_error OverflowError
  end
end