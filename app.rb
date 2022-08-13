require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get '/zikei' do
  'Hello zikei!'
end