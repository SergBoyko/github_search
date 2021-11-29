module GitSearchHelper
  require 'json'
  require 'uri'
  require 'net/http'

  def search_request(word)
    uri = URI("https://api.github.com/search/repositories?q=#{word}&sort=stars&order=desc&page=1&per_page=100")
    res = Net::HTTP.get_response(uri)
    JSON.parse(res.body)
  end

end
