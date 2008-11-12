def pallindromes
  1.upto(999) do |num|
    if num.to_s = num.to_s.reverse
      puts num
    end
  end
end
