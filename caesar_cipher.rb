def caesar_cipher(string, shift)
  encrypted_string = ""
  arr = string.split("")
  arr.map do |char|
    if char.ord.between?(65, 90)
      num_char = char.ord + shift % 26
      if num_char > 90
        num_char = (char.ord + shift % 26) - 26
      end
    elsif char.ord.between?(97, 122)
      num_char = char.ord + shift % 26
      if num_char > 122
        num_char = (char.ord + shift % 26) - 26
      end
    else
      num_char = char
    end
    encrypted_string << num_char
  end    
  puts encrypted_string
end