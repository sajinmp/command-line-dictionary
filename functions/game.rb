def to_my_hash(arr)
  h = {}
  arr.each do |i|
    unless i.nil?
      h[i] = 0
    end
  end
  return h
end

def game
  word = Wordnik.words.get_random_word['word']
  defs = definition(word)[0]
  syns = synonym(word)[0]
  ants = antonym(word)[0]
  exs = example(word)[0]
  defs = to_my_hash(defs)
  syns = to_my_hash(syns)
  ants = to_my_hash(ants)
  exs = to_my_hash(exs)
end
