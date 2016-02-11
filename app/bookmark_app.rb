ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require './app/model/links.rb'
require 'tilt/erb'

class Bookmark < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/links/new'do
    erb :add_links
  end

  post '/links'do
    Link.create(name: params[:name], link: params[:link])
    redirect '/savedlink'
  end

  get '/savedlink'do
    erb :savedlink
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
