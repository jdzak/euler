require 'integer'
describe Integer do
  it "should return multiples of 3 for all natural numbers up to 9" do
    multiples = 3.multiples(1..9)
    multiples.should == [3,6,9]
  end
 end