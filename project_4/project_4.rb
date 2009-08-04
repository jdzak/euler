require 'core_ext'

palindromes = []

999.downto(100) do |left|
  999.downto(100) do |right|
    product = left * right
    if left != right && product.to_s.palindrome?
      palindromes << product 
      break
    end
  end
end

largest = palindromes.sort.last

puts largest