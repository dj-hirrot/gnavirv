module Gurumes
  class SearchService
    def initialize(area, food)
      @area = area
      @food = food
      @hit = 20
    end

    def run
      uri = URI.parse URI.encode("https://api.gnavi.co.jp/RestSearchAPI/v3/?key_id=#{ENV['GURUNAVI_API']}&address=#{@area}&freeword=#{@food}&hit_per_page=#{@hit}")
      response = JSON.load(Net::HTTP.get(uri))
      response['rest']
    end
  end
end

