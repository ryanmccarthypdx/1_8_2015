require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')

get('/') do
  erb(:root)
end


get('/form') do
  erb(:form)
end

get('/result') do
  @input_word = params.fetch("word_input")
  @result = params.fetch("word_input").scrabble()
  erb(:result)
end
