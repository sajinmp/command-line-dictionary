def example(myword)
  query = { limit: 10, api_key: $api_key }
  res = HTTParty.get("http://api.wordnik.com:80/v4/word.json/#{URI.escape(myword)}/examples", query: query)
  op = []
  unless res.empty?
    res['examples'].each_with_index do |i, index|
      op << i['text']
    end
  end
  return [op, myword, 'examples']
end
