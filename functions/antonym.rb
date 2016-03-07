def antonym(myword)
  query = { relationshipTypes: 'antonym', limitPerRelationshipType: 10, api_key: $api_key }
  res = HTTParty.get("http://api.wordnik.com:80/v4/word.json/#{URI.escape(myword)}/relatedWords", query: query)
  op = []
  unless res.empty?
    res[0]['words'].each_with_index do |i, index|
      op << i.capitalize
    end
  end
  return [op, myword, 'antonyms']
end
