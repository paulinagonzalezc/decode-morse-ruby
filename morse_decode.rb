# Create a method to decode a Morse code character
@morse_dict = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0'
}

def decode_char(morse)
  @morse_dict[morse]
end

puts decode_char('.-')
# => A

# Create a method to decode an entire word in Morse code
def decode_word(word)
  value = ''
  char = word.split
  char.each { |item| value += decode_char(item) }
  value
end

puts decode_word('-- -.--')
# => MY

# Create a method to decode the entire message in Morse code
def decode(message)
  decoded_message = ''
  words_array = message.split('   ')
  words_array.each { |word| decoded_message += " #{decode_word(word)}" }
  decoded_message.strip
end

puts decode('-- -.--   -. .- -- .')
# => MY NAME

puts decode(' .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# => A BOX FULL OF RUBIES
