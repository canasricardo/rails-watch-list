require 'open-uri'

Movie.destroy_all

url = 'https://tmdb.lewagon.com/movie/top_rated'
response = URI.open(url).read
data = JSON.parse(response)

data['results'].each do |movie_data|
  title = movie_data['title']
  overview = movie_data['overview']
  poster_url = "https://image.tmdb.org/t/p#{movie_data['backdrop_path']}"
  rating = movie_data['vote_average']
  movie = Movie.new(title: title, overview: overview, poster_url: poster_url, rating: rating)
  movie.save
end
