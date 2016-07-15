require_relative "test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    AdventureGame
  end

  def test_login
    response = post("/login")
    binding.pry
    assert JSON.parse(response.body)["token"]

  end


end
