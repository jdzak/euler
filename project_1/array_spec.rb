require 'array'

describe Array do
  it "should return the sum of the array" do
    [1,3,9].sum.should == 13
  end
end