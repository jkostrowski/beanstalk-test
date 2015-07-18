require 'rubygems'
require 'sinatra'
require 'json'
require 'openssl'

set :port, 8080
set :bind, '0.0.0.0'

get '/services' do
  content_type :text
  [ 'BFM', 'MIP', 'TIR' ].to_json
end

get '/services/:id' do
  { :id => params[:id], :capacity => 100, :scenario => 'REST' }.to_json
end
