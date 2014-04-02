require 'sinatra'

get '/contacts' do
  erb :contacts
end

get '/' do
  @crm_app_name = "Brock's CRM"
  erb :index
end
