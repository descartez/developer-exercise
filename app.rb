require 'sinatra'
require_relative 'exercise.rb'

get '/' do
  erb :index
end

put '/marklar' do
  return Exercise.marklar(params[:string])
end