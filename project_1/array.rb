class Array
  def unique
    self & self
  end
  
  def sum
    self.inject{|sum, num| sum + num}
  end
end