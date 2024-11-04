def caesar_cipher(string, shift_number)
  shift_number = shift_number % 26

  encryted_string = string.split('').map do |letter|
    if letter.ord >= 65 && letter.ord <= 90
      if letter.ord + shift_number > 90
        (64 + (shift_number - (90 - letter.ord))).chr
      else
        (letter.ord + shift_number).chr
      end
    elsif letter.ord >= 97 && letter.ord <= 122
      if letter.ord + shift_number > 122
        (96 + (shift_number - (122 - letter.ord))).chr
      else
        (letter.ord + shift_number).chr
      end
    else
      letter
    end
  end

  encryted_string.join('')
end

print caesar_cipher('What a string!', 5)
