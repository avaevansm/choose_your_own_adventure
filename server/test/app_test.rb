require_relative "test_helper"

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    AdventureGame
  end

  def test_login
    response = post("/login")
    assert JSON.parse(response.body)["token"]
  end

  def test_token_unique
    response1 = post("/login")
    token = JSON.parse(response1.body)["token"]
    binding.pry
    assert_raises(StandardError) do
      User.create!(token: token)
    end



  end


end
