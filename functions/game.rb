def to_my_hash(arr)
  h = {}
  arr.each do |i|
    unless i.nil?
      h[i] = 0
    end
  end
  return h
end

def show_hints(arr)
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
  dlength = defs.keys.length
  slength = syns.keys.length
  alength = ants.keys.length
  elength = exs.keys.length
  puts 'Definition'
  defs[defs.keys[0]] = 1
  puts defs.keys[0]
  show_hints(defs)
  print 'Enter word : '
  entry = STDIN.gets.chomp
  while entry.downcase != word.downcase 
    puts "1. Try again\n2. Hint\n3. Exit"
    choice = STDIN.gets.chomp.to_i
    case choice
    when 1
      print 'Enter word : '
      entry = STDIN.gets.chomp
    when 2
      unless defs.select { |k, v| v == 0 }.empty?
        new = defs.select { |k, v| v == 0 }.keys.first
        defs[new] = 1
        puts 'Hint - Definition'
        puts new
      else
        unless syns.select { |k, v| v == 0 }.empty?
          new = syns.select { |k, v| v == 0 }.keys.first
          syns[new] = 1
          puts 'Hint - Synonym'
          puts new
        else
          unless ants.select { |k, v| v == 0 }.empty?
            new = ants.select { |k, v| v == 0 }.keys.first
            ants[new] = 1
            puts 'Hint - Antonym'
            puts new
          else
            puts 'Sorry! Out of hints'
          end
        end
      end
    when 3
      flag = 1
      break
    end
  end
  if flag == 1
    puts 'Sorry better luck next time'
    puts 'The word was ' + word
  else
    puts 'Congratulations, You got the word'
  end
  output([defs.keys, word, 'definitions'])
  output([syns.keys, word, 'synonyms'])
  output([ants.keys, word, 'antonyms'])
  output([exs.keys, word, 'examples'])
end
