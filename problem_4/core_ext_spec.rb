require 'core_ext'

describe String do
  it "should say 303 is a palindrome" do
    '303'.should be_palindrome
  end
  
  it "should say 567 is not a palindrome" do
    '567'.should_not be_palindrome
  end
end