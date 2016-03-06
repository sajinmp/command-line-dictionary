def word_of_the_day
  res = Wordnik.words.get_word_of_the_day(date: Time.now.to_date)
  detail(res['word'])
end
