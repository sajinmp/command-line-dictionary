def synonym(myword)
  res = Wordnik.word.get_related(myword, type: 'synonym', limit: 10)
  op = []
  unless res.empty?
    res[0]['words'].each_with_index do |i, index|
      op << i.capitalize
    end
  end
  return [op, myword, 'synonyms']
end
