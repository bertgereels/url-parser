require 'minitest/autorun'
require 'url_parser'

class UrlParserTest < Minitest::Test

  def test_hostname
    url = UrlParser.new "http://reddit.com"
    assert_equal "reddit.com", url.host
  end

  def test_scheme
    url = UrlParser.new "https://google.be"
    assert_equal "https", url.scheme
  end

  def test_path
    url = UrlParser.new "http://youtube.com/caseyneistat"
    assert_equal "caseyneistat", url.path
  end

  def test_long_path
    url = UrlParser.new "https://www.youtube.com/user/caseyneistat/about"
    assert_equal "caseyneistat", url.path
  end

end
