require_relative 'app'
require 'pry'
class Player

  @@users = []
  @@current_user = ""
  attr_reader :current_user
  def initialize(name)
    @@users << name
    @@current_user = name
  end

  def start
    puts "What is your name?"
    input = gets.chomp
    if @@users.include?(input)
      @@current_user = input
    else
      initialize(input)
    end
  end

  def update_user(input)
    @@current_user = input
  end



end



binding.pry
