class FetchArtists
  def initialize
    conn = Faraday.new do |f|
      f.response :follow_redirects
      # f.response :json
    end
    @response = conn.get('https://moat.ai/api/task/') do |req|
      req.headers['Basic'] = 'ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=='
    end
  end

  def parse_list
    list = JSON.parse(@response.body)
    return list.flatten
  end
end