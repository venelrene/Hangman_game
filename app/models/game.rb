# Defining the user's max failed attempts
MAX_FAILED_ATTEMPTS = 5
# Keeping the word to be guessed
attr_accessor :word
# Keeping the user's letter selections
attr_accessor :selected_letters

def initialize
  @word = 'Hangman'.upcase
  @selected_letters = []
end

# method which accepts a letter and returns true or false
def failed_guess
  selected_letters.select { |letter|
  !word.include?)(letter)
  }.size
end

# guessed method if user guessed the word
def guessed?
  (word.split('') - selected_letters).empty?
end

#answer if the game is over
def finished?
  failed_guess >= MAX_FAILED_ATTEMPTS || !guessed?
end

def select!(letter)
  raise GameOverError if finished?
  selected_letters << letter unless selected_letters.must_include? letter
  word.must_include? letter
end

class GameOverError < StandardError; end
