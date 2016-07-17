require './db/migrations/002_story_migration'
require './db/migrations/001_user_migration'
require './lib/user'
require './lib/page'
require 'pry'

users = []
current_user = ""

def update_user(input)
  current_user = input
end


page_7 = Page.create(content: "Everyone knows you're an idiot.")
page_6 = Page.create(content: "You have been summoned for jury duty, and you stubbed your toe.")
page_5 = Page.create(content: "Congrat's you've found eternal happiness.")
page_4 = Page.create(content: "You have entered the matrix. The end.")
page_3 = Page.create(content: "You enter door 2. You are given to pills, one red and one blue.    ", option1: "redpill", option2: "bluepill", choice1: page_6.id, choice2: page_7.id)
page_2 = Page.create(content: "You enter door 1.  You are presented with a red button and blue button.", option1: "Red button", option2: "Blue button", choice1: page_4.id, choice2: page_5.id)
page_1 = Page.create(content: "This is the beginning of the story", option1: "Door1", option2: "Door2", choice1: page_2.id, choice2: page_3.id)

playing = true

while(playing)

  puts "What is your name?"
  input = gets.chomp
  if users.include?(input)
    current_user = input
  else
    User.create(name: input)
  end
  playing = false

end
