module GenresHelper
  def all_genres
    @genres.collect { |genre| genre.name }
  end
end
