require 'integer'

#primes = 600851475143.primes
#factors = 600851475143.factors
#prime_factors = primes & factors
#puts "The answer is #{prime_factors[-1]}"

# 
# NUM = 600851475143
# NUM.factors(:order => :desc, :start => Math.sqrt(NUM).floor) do |factor|
#   if factor.prime?
#     puts "The largest prime factor of #{NUM} is: #{factor}"
#     break
#   end
# end



def find_largest_factor(n)
  i = 2; 
  while(i <= Math.sqrt(n).floor())
    if (n % i == 0)
      return (n/i)
    end
    i+=1
  end
  return n
end
num = find_largest_factor(600851475143)
while( !num.prime?)
  num = find_largest_factor(num)
end
puts num