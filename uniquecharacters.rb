# Determine if string contains all unique characters

def unique(string)
  letters = string.downcase.split("")
  check_array = []

  letters.each do |char|
    if check_array.include?(char)
      return false
    else
      check_array << char
    end
  end

  return true
end

# Without using seperate data structure

def unique_no_array(string)
  letters = string.downcase.split("")
  unique = true

  letters.each do |char|
    if letters.count(char) > 1
      unique = false
    end
  end
  return unique
end
