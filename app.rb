# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'
class Contact < ActiveRecord::Base
  self.table_name = 'salesforce.contact'
end

get "/contacts" do
  @contacts = Contact.order("lastname desc").limit(5)
  erb :index
end

get "/" do
  erb :home
end


