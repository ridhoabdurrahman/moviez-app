class Movie {
  Movie(
      {this.movieName = '',
      this.movieRating = '',
      this.movieGenre = '',
      this.moviePicture = ''});

  String movieName;
  String movieRating;
  String movieGenre;
  String moviePicture;
}

var listMovie = [
  Movie(
    movieName: 'Mulan Session',
    movieGenre: 'War, History',
    movieRating: '3.0',
    moviePicture: 'list-movie-1.png',
  ),
  Movie(
    movieName: 'Beauty & Beast',
    movieGenre: 'Sci-Fiction',
    movieRating: '5',
    moviePicture: 'list-movie-2.png',
  ),
];

var listMovieSearch = [
  Movie(
    movieName: 'The Dark II',
    movieGenre: 'Horror',
    movieRating: '4.0',
    moviePicture: 'search-movie-1.png',
  ),
  Movie(
    movieName: 'The Dark Knight',
    movieGenre: 'Heroes',
    movieRating: '5',
    moviePicture: 'search-movie-2.png',
  ),
  Movie(
    movieName: 'The Dark Tower',
    movieGenre: 'Action',
    movieRating: '4',
    moviePicture: 'search-movie-3.png',
  ),
];
