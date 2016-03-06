def antonym(myword)
  res = Wordnik.word.get_related(myword, type: 'antonym', limit: 10)
  res[0]['words'].each_with_index do |i, index|
    puts "#{index + 1}. #{i.capitalize}"
  end
end
