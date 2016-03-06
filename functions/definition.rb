def definition(myword)
  res = Wordnik.word.get_definitions(myword, limit: 10)
  op = []
  unless res.empty?
    res.each_with_index do |i, index|
      op << i['text']
    end
  end
  return [op, myword, 'definitions']
end
