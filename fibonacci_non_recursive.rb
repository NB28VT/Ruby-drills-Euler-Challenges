def fibonacci(x)

  if x == 0
    return 0
  elsif x == 1
    return 1
  else
    a = 0
    b = 1
    i = 1
    while (i< x) do
      c = a + b
      a = b
      b = c
      i += 1
    end
    puts c
  end
end

fibonacci(5)
fibonacci(8)
fibonacci(9)
