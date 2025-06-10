def caesar_cipher(message, shift_factor)
  enc_message = ''
  message.chars.each do |char|
    unless char.match(/[a-zA-Z]{1}/)
      enc_message += char
      next
    end
    id = char.match(/[A-Z]{1}/) ? ((char.ord + shift_factor - 'A'.ord) % 26) + 'A'.ord : ((char.ord + shift_factor - 'a'.ord) % 26) + 'a'.ord
    enc_message += id.chr
  end
  enc_message
end

puts caesar_cipher('What a string!', 5)