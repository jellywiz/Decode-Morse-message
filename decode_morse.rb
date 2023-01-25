MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

def decode_char(char)
  MORSE_CODE[char]
end

def decode_word(word)
  decoded_word = ''
  word.split.each do |char|
    decoded_word += decode_char(char)
  end
  decoded_word
end

def decode(message)
  decoded_message = ''
  message.split('   ').each do |w|
    decoded_message += "#{decode_word(w)} "
  end
  decoded_message
end

puts decode('-- -.--   -. .- -- .')

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
