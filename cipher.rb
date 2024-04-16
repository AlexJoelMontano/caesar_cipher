def cipher(input, shift)
    alphabet = ('a'..'z').to_a
    input.chars.map do |char|
      if alphabet.include? char then
        alphabet[(alphabet.index(char) + shift) % 26]
      else
        char
      end
    end.join
  end
  
  puts "What is the message to be encoded?"
  input = gets.chomp.downcase
  puts "What is the shift?"
  shift = gets.chomp.to_i
  puts cipher(input, shift)