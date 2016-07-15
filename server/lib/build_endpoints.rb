require 'bundler/setup'
require 'sinatra/base'
require 'pry'
require './page'

Page.create(content: "This is the beginning of the story", choice1: "Door1", choice2: "Door2", choice1_id: 2, choice2_id: 3)

class BuildEndpoints < Sinatra::base

  get "/:page" do
    page = Page.find(params[:page])
    JSON.generate(page)
  end



end
