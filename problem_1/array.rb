class Array
  def sum
    self.inject{|sum, num| sum + num}
  end
end