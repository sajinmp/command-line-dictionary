def example(myword)
  res = Wordnik.word.get_examples(myword, limit: 10)
  op = []
  unless res.empty?
    res['examples'].each_with_index do |i, index|
      op << i['text']
    end
  end
  return [op, myword, 'examples']
end
