require './contact.rb'
require 'sinatra'



get '/contacts/new' do
  erb :new
end

get '/contacts' do
  @contacts = []
  @contacts << Contact.new("Brock", "Whitbread", "brock.whitbread@gmail.com", "note note")
  @contacts << Contact.new("Isobel", "Cole", "isobelcole@gmail.com", "note note note")
  @contacts << Contact.new("Bill", "Cole", "stubborndad@yahoo.com", "note note note")

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
