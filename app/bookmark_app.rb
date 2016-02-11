ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'
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
    link = Link.new(name: params[:name], link: params[:link])
    tag = Tag.create(name: params[:tags])
    link.tags << tag
    link.save
    redirect '/links'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
