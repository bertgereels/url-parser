
class UrlParser

  private
  attr_accessor :url

  public
  def initialize url    #initialize must be in small letters
    @url = url
  end

  def host
    (split "://").last
  end

  def scheme
    (split "://").first
  end

  def path
    (host.split "/").last
  end

  private
  def split delimiter
    url.split delimiter
  end

end
