require('sinatra')
require('sinatra/reloader')
require('./lib/string_parse')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/number_output') do
  @number_output = params.fetch("string").string_parse("happy")
  erb(:number_output)
end
