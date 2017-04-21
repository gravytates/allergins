require('sinatra')
require('sinatra/reloader')
require('rspec')
require('./lib/allergy')
also_reload('./lib/**/*.rb')

get ('/') do
  erb(:index)
end

get('/result') do
  @input = params.fetch('score').to_i.allergy
  erb(:result)
end
