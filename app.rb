require('sinatra')
require('sinatra/reloader')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/number_output') do
  @number_output = params.fetch("string").string_parse("string")
  erb(:number_output)
end
