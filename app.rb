require 'sinatra'
require 'json'
require_relative 'exercise.rb'

get '/' do
  erb :index
end

put '/marklar' do
  str = Exercise.marklar(params[:string])
  content_type :json
  { :str => str }.to_json
end

put '/evenfib' do
  num = Exercise.even_fibonacci(params[:fib].to_i)
  content_type :json
  { :fib => num }.to_json
end