require './contact.rb'
require './rolodex.rb'
require 'sinatra'
require "sinatra/content_for"


@@rolodex = Rolodex.new

@@rolodex.add(Contact.new("Brock", "Whitbread", "brock.whitbread@gmail.com", "The New Guy"))

get "/contacts/1000" do
  @contact = @@rolodex.find(1000)
  erb :show_contact
end

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

post '/contacts' do
  puts params
  contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  @@rolodex.add(contact)
  redirect to('/contacts')
end
