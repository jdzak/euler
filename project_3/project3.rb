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



# def find_largest_factor(n)
#   i = 2; 
#   while(i <= Math.sqrt(n).floor())
#     if (n % i == 0)
#       return (n/i)
#     end
#     i+=1
#   end
#   return nil
# end
# old_val = find_largest_factor(600851475143)
# while(new_val = find_largest_factor(old_val))
#   old_val = new_val
# end
# puts old_val
# 

def largest_factor(n)
  for k in (2..(Math.sqrt(n)).floor)  
    return (n/k) if n % k == 0
  end
  nil
end            

def largest_prime_factor(n)
  while(true)
    m = largest_factor(n)
    return n if m.nil?
    n = m        
  end
end            

puts largest_prime_factor(600851475143)

