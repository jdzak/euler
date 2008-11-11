require 'mathn'

class Integer
  def primes
    primes = []
    p = Prime.new
    prime = p.succ
    while prime <= self
      primes << prime
      prime = p.succ
    end
    primes
  end
  
  def factors(options = {})
    options[:order] ||= :asc    
    range =  (1..self).to_a
    range.reverse! if options[:order] == :desc
    range.select do |num|
      is_a_factor = self % num == 0
      yield num if block_given? && is_a_factor
      is_a_factor
    end
  end
  
  def prime?
    return false if (self == 0) 
    return false if (self == 1) 
    return true  if (self == 2)

    # for (var i=2;i<num;i++) do
    #       return false if self % i == 0
    #     end
    any_composites = (2..self-1).any? { |num| self % num == 0 }
    
    return !any_composites
  end
end