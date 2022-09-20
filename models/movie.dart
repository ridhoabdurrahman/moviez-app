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
