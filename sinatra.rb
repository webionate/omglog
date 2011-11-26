require 'sinatra'
require 'haml'
require 'coffee-script'
require 'sinatra/reloader'
require './lib/zomglog.rb'

also_reload 'lib/*.rb'

get '/' do
  Zomglog.new(".").to_html
end
get '/goodfilms' do
  Zomglog.new("~/src/goodfilms").to_html
end