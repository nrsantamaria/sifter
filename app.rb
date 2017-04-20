require 'sinatra'
if development?
  require 'sinatra-contrib'
  also_reload('**/*.rb')
end

get('/') do
  erb(:index)
end
