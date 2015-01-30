# more elegant solution?



def strip(string)
  string.downcase.delete(' ').split("")
end


def elegant_anagram(string_1, string_2)
  array_1 = strip(string_1).sort
  array_2 = strip(string_2).sort

  if array_1 == array_2
    true
  else
    false
  end
end







def anagram(string_1, string_2)
  array_1 = strip(string_1)
  array_2 = strip(string_2)

  anagram = true

  array_1.each do |char|
    if !array_2.include?(char)
      anagram = false
    else
      if array_2.count(char) != array_1.count(char)
        anagram = false
      end
    end
  end

  array_2.each do |char|
    if !array_1.include?(char)
      anagram = false
    else
      if array_1.count(char) != array_1.count(char)
        anagram = false
      end
    end
  end

  anagram
end
