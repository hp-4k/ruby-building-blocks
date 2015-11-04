def caesar_cipher(text, offset)
  new_text = ""
  offset += 26 while offset < 0
  text.each_char do |character|
    if ('A'..'Z').include?(character) 
      new_char = character.ord + offset
      new_char -= 26 if new_char > 90
      new_text << new_char.chr
    elsif ('a'..'z').include?(character)
      new_char = character.ord + offset
      new_char -= 26 if new_char > 122
      new_text << new_char.chr
    else
      new_text << character
    end
  end
  new_text
end

puts caesar_cipher("What a string!", -1)