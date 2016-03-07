def word_of_the_day
  query = { date: Time.now.to_date, api_key: $api_key }
  res = HTTParty.get('http://api.wordnik.com:80/v4/words.json/wordOfTheDay', query: query)
  detail(res['word'])
end
