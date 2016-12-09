require 'minitest/autorun'
require 'url_parser'

class UrlParserTest < Minitest::Test

  def test_hostname
    url = UrlParser.new("http://reddit.com")
    assert_equals("reddit.com", url.host)

  end
end
