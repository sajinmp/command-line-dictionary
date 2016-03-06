def game
  word = Wordnik.words.get_random_word['word']
  defs = definition(word)
  syns = synonym(word)
  ants = antonym(word)
  
end
