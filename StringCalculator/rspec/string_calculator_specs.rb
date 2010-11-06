require '../src/string_calculator'

describe StringCalculator do
    
  it "should get zero from adding empty string" do
    result_from("").should == 0
  end
  
  it "should get single number from adding string containing only that number" do
    result_from("1").should == 1
    result_from("2").should == 2
    result_from("3").should == 3
    result_from("10").should == 10
    result_from("999").should == 999
  end
  
  it "should return sum of numberrs in string containing two comma separated numbers" do
    result_from("1,2").should = 3
  end
  
  def result_from(input_string)
    string_calculator = StringCalculator.new
    string_calculator.add(input_string)
  end
end