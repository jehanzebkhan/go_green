json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :score, :imdb_link
  json.url movie_url(movie, format: :json)
end
