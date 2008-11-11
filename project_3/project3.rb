require 'integer'

#NUM = 13195
NUM = 600851475143
NUM.factors(:order => :desc) do |factor|
  if factor.prime?
    puts "The largest prime factor of #{NUM} is: #{factor}"
    break
  end
end

#primes = 600851475143.primes
#factors = 600851475143.factors
#prime_factors = primes & factors
#puts "The answer is #{prime_factors[-1]}"
