class MorseCodeDecoder
  MORSE_CODE = {
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
    '--..' => 'Z'
  }.freeze

  def self.decode_char(code)
    MORSE_CODE[code]
  end

  def self.decode_word(code)
    code.split.map { |char| decode_char(char) }.join
  end

  def self.decode_message(code)
    words = code.split('   ')
    words.map { |word| decode_word(word) }.join(' ')
  end
end

# Testing the Morse code decoder

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'

decoded_message = MorseCodeDecoder.decode_message(message)

puts decoded_message