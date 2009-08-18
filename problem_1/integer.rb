class Integer
  def multiples(range)
    range.select do |num|
      num % self == 0
    end
  end
end