require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get '/ryutaro-kimura' do
  'Hello ryutaro-kimura!'
end