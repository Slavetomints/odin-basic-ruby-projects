def ceaser_cipher(string, shift)
  reg_text = string.chars
  cipher_text = []
  reg_text.each do |char|
    if char.match(/[a-zA-Z]/)
      if char == char.upcase
        #checks for looping
        if char.ord + shift > 90
          cipher_char = char.ord + shift - 26
          cipher_text << cipher_char.chr
        else
          cipher_char = char.ord + shift
          cipher_text << cipher_char.chr
        end
      elsif char == char.downcase
        #checks for looping        
        if char.ord + shift > 122
          cipher_char = char.ord + shift - 26
          cipher_text << cipher_char.chr
        else
          cipher_char = char.ord + shift
          cipher_text << cipher_char.chr
        end
      end
    else cipher_text << char
    end
  end
  puts cipher_text.join
end


puts "What would you like to be encoded?"
string = gets
puts "How much of a shift do you want?"
shift = gets.to_i
shift > 26 ? shift -= 26 : shift
ceaser_cipher(string, shift)