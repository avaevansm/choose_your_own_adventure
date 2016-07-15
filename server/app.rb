ENV["RACK_ENV"] ||= 'development'

require "rubygems"
require "bundler/setup"
require "sinatra/base"
require "json"

require "securerandom"
require_relative "database_connection"
require_relative "lib/adventure"

require './lib/page'




class AdventureGame < Sinatra::Base

page_1 = Page.create(content: "This is the beginning of the story", option1: "Door1", option2: "Door2")


  before do
    content_type "application/json"
  end

  post "/login" do
    token = SecureRandom.hex

    user = User.create(token: token)

    user.to_json
  end


  #return status 403 unless valid?(token)



  get "/start" do
    page_1.to_json
  end

  # error ThePriceIsWrong do
  #     return status 403
  #   end
  #   raise ThePriceIsWrong unless valid?(token)
  # end

  run! if app_file == $PROGRAM_NAME
end