def factorial_non_recur(x)
  if x == 0
    return 1
  else
    num_array = []
    value = 1
    x.times do
      num_array << value
      value +=1
    end
      puts num_array.inject(:*)
  end
end

def factorial_recur(x)
  if x == 0
    return 1
  else
    return x * factorial_recur(x-1)
  end

end







factorial_non_recur(17)
puts factorial_recur(17)
