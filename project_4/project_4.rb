require 'core_ext'

palindromes = []

999.downto(500) do |left|
  999.downto(500) do |right|
    product = left * right
    palindromes << product if product.to_s.palindrome?
  end
end

largest = palindromes.sort.last

puts largest