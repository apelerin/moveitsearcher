require 'themoviedb'
require 'dotenv'

Dotenv.load

class SearchMovie
    def initialize(query)
      @query = query
    end

  def search_movie
    Tmdb::Api.key(ENV['MY_API_KEY'])
    return Tmdb::Movie.find(@query)
  end
end
