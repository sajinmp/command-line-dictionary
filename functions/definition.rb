def definitions(myword)
  res = Wordnik.word.get_definitions(myword, limit: 10)
  res.each_with_index do |i, index|
    puts "#{index + 1}. #{i['text']}"
  end
end
