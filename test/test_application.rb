require_relative "test_helper"

class TestController < Rulers::TestController
  def index
    "Hello!"
  end
end

class TestApp < Rulers::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class RulersAppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request_get
    get "/"

    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end

  def test_request_post
    post "/my/url"

    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end

end
