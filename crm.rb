require 'sinatra'

get '/contacts/:id'
  erb :id
end

get '/contacts/new' do
  erb :new
end

get '/contacts' do
  erb :contacts
end

get '/' do
  @crm_app_name = "Brock's CRM"
  erb :index
end
