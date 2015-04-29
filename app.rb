require('sinatra')
require('sinatra/reloader')
require('./lib/string_parse')
also_reload('lib/**/*.rb')
require('pry')


get('/') do
  erb(:index)
end

get('/number_output') do
  sentence = params.fetch('sentence')
  word = params.fetch('word')
  @result = sentence.string_parse(word)
  erb(:number_output)
end


=begin
This did not work:
get('/number_output') do
@sentence = params.fetch('sentence')
@word = params.fetch('word')
  @result = @sentence.string_parse(@word)
  erb(:number_output)
end

I had to reset the sentence and word variables to make it work. I'm not sure why.

=end
