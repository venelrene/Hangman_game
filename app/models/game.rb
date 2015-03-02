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