require 'themoviedb'
require 'dotenv'

Dotenv.load

class SearchMovie
    def initialize(query)
      @query = query
    end

  def search_movie
    Tmdb::Api.key(ENV['MY_API_KEY'])
    puts Tmdb::Movie.credits(Tmdb::Movie.find(@query).first.id)[:director]
    return Tmdb::Movie.find(@query)
  end
end
