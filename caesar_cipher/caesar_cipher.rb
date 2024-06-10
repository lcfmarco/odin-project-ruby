# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

def is_letter?(char)
  if char.between?('a', 'z')
    return true
  elsif char.between?('A', 'Z')
    return true
  else
    return false
  end
end

def wrap?(char, shift)
  if char.between?('a', 'z')
    new_char = (char.ord + shift).chr
    new_char > 'z'
  elsif char.between?('A', 'Z')
    new_char = (char.ord + shift).chr
    new_char > 'Z'
  else
    false
  end
end


def caesar_cipher(string, shift)
  cipher = ""
  string.each_char do |char|
    if wrap?(char, shift)
      new_ord = char.ord + shift - 26
      new_char = new_ord.chr
      cipher << new_char
    elsif is_letter?(char)
      new_ord = char.ord + shift
      new_char = new_ord.chr
      cipher << new_char
    else
      cipher << char
    end
  end
  cipher
end


# puts caesar_cipher("What a string!", 5)