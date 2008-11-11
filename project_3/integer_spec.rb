require 'integer'

describe Integer do
  it "should be 2, 3, 5, 7, and 11 as primes of 12" do
    12.primes.should == [2,3,5,7,11]
  end
  
  it "should be 1, 2, 3, 4, 6, and 12 as factors of 12" do
    12.factors.should == [1,2,3,4,6,12]
  end
  
  it "should be 12, 6, 4, 3, 2, and 1 as descending factors of 12" do
    12.factors(:order => :desc).should == [12,6,4,3,2,1]
  end
  
  it "should yield each ascending factor if a block is provided" do
    factors = []
    12.factors{|factor| factors << factor}
    factors.should == [1,2,3,4,6,12]
  end
  
  it "should yield each descending factor if a block is provided" do
    factors = []
    factors = 12.factors(:order => :desc){|factor| factors << factor}
    factors.should == [12,6,4,3,2,1]
  end
  
  it "should be prime" do
    7.should be_prime
  end
  
  it "should not be prime" do
    8.should_not be_prime
  end
end