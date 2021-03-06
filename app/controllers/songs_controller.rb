require 'rack-flash'
class SongsController < ApplicationController

    get '/songs' do
        @songs = Song.all 
        erb :'/songs/index'
    end

    get '/songs/new' do
        erb :'/songs/new'
    end

    get '/songs/:slug' do
        @song = Song.find_by_slug(params[:slug])
        erb :'/songs/show'
    end

    post '/songs' do
        @song = Song.create(params[:song])
        erb :'/song/show'
    end
end