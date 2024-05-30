class Movie{
  final int tmdbID;
  final String title;
  final String posterUrl;
  final String backdropUrl;
  final double voteAverage;
  final String releaseDate;
  
  final String overview;
  
  final bool isMovie;

  Movie({required this.tmdbID, required this.title, required this.posterUrl, required this.backdropUrl, required this.voteAverage, required this.releaseDate, required this.overview, required this.isMovie});
}