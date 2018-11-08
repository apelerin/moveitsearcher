class MoviesController < ApplicationController
  def search
  end

  def index
    puts "///////// #{params} !!!!!!!!!!!!!!!!!!!!!111 #{params_form_for}"
    @searchmovie = SearchMovie.new(params_form_for[:request])
    @searchmovie = @searchmovie.search_movie
  end

  private

  def params_form_for
    params.require(:search_form).permit(:request)
  end
end
