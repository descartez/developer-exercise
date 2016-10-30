require 'sinatra'

get '/' do
  erb :index
end

put '/marklar' do
  render
end