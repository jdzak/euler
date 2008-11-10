require 'array'

describe Array do
  it "should return only unique items" do
    [1,3,3,4,4].unique.should == [1,3,4]
  end
  it "should return the sum of the array" do
    [1,3,9].sum.should == 13
  end
end