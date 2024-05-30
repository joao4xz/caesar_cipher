def caesar_cipher(string, shift_number)
  encryted_string = string.split("").map do |letter|
    if letter.ord >= 65 and letter.ord <= 90
      if(letter.ord + shift_number > 90)
        (64 + (shift_number - (90 - letter.ord))).chr
      else
        (letter.ord + shift_number).chr
      end
    elsif letter.ord >= 97 and letter.ord <= 122
      if(letter.ord + shift_number > 122)
        (96 + (shift_number - (122 - letter.ord))).chr
      else
        (letter.ord + shift_number).chr
      end
    else
      letter
    end
  end

  encryted_string.join("")
end

print caesar_cipher("What a string!", 5)