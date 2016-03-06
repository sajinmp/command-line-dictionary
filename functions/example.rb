def example(myword)
  res = Wordnik.word.get_examples(myword, limit: 10)
  res['examples'].each_with_index do |i, index|
    puts "#{index + 1}. i['text']"
  end
end
