class SearchMovie
  require 'themoviedb'
  require 'dotenv'
  Dotenv.load

  def initialize(query)
    @query = query
    search
  end

  def search
    Tmdb::Api.key(ENV['MY_API_KEY'])
    Tmdb::Movie.find(@query)
  end
end
