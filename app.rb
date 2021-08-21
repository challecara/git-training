require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!'
end

get '/shunsuke-tamura' do
  'Hello shunsuke-tamura'
end