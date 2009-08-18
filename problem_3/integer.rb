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
    options[:start] ||= self / 2
    range =  (1..(options[:start])).to_a << self
    range.reverse! if options[:order] == :desc
    range.select do |num|
      is_a_factor = self % num == 0
      yield num if block_given? && is_a_factor
      is_a_factor
    end
    # or
    # get factors up to square root
    # then take self and divide by each factor to get second set of factors
  end

      
  def prime?
    return false if (self == 0) 
    return false if (self == 1) 
    return true  if (self == 2)
    
    any_composites = (2..self-1).any? { |num| self % num == 0 }
    
    return !any_composites
  end
end