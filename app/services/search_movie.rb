require 'themoviedb'
require 'dotenv'

Dotenv.load

class SearchMovie
    def initialize(query)
      @query = query
    end

  def search_movie
  	puts ENV['MY_API_KEY']
    Tmdb::Api.key(ENV['MY_API_KEY'])
    puts 'yooooooo'
    return Tmdb::Movie.find(@query)
    puts 'yooooooo'
  end
end
