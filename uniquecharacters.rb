# Determine if string contains all unique characters

def unique(string)
  letters = string.split("")
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
