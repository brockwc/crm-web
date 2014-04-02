require './contact.rb'
require './rolodex.rb'
require 'sinatra'

@@rolodex = Rolodex.new

get '/contacts/new' do
  erb :new
end

get '/contacts' do 
  erb :contacts
end

get '/contacts/edit' do
  erb :edit
end

get '/contacts/:id' do
  erb :id
end

get '/' do
  @crm_app_name = "Brock's CRM"
  erb :index
end
