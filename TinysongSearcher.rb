require 'uri'
require 'net/http'

class TinysongSearcher
    def initialize(host, key)
        @host = host
        @key = key
    end

    def search (artist, song)
        url_formatted_string = formatString(song, artist)
        uri = URI::HTTP.build(:host => @host, :path => '/b/' + url_formatted_string, :query => 'format=json&key=' + @key)
        
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def formatString(*args)
        string = args.join('+')
        string.gsub(/[^0-9A-Za-z]/, '+')
    end
end
