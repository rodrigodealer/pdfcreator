require 'minitest/autorun'
require 'rack/test' 
require File.expand_path '../../pdf_creator.rb', __FILE__

class PdfCreatorTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hello_world
    get '/'
    assert last_response.ok?
    assert_equal "Hello, World!", last_response.body
  end
end