# frozen_string_literal: false

def caesar_cipher(string, shift)
  encrypted_string = ''
  arr = string.chars
  arr.map do |char|
    if char.ord.between?(65, 90)
      num_char = char.ord + (shift % 26)
      num_char = (char.ord + (shift % 26)) - 26 if num_char > 90
    elsif char.ord.between?(97, 122)
      num_char = char.ord + (shift % 26)
      num_char = (char.ord + (shift % 26)) - 26 if num_char > 122
    else
      num_char = char
    end
    encrypted_string << num_char
  end
  puts encrypted_string
end

puts caesar_cipher('hate to say I told you so', 2)
puts caesar_cipher('MARIO', 1)
