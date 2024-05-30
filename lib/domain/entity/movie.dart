import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int tmdbID;
  final String title;
  final String posterUrl;
  final String backdropUrl;
  final double voteAverage;
  final String releaseDate;
  
  final String overview;
  
  final bool isMovie;

  Movie({required this.tmdbID, required this.title, required this.posterUrl, required this.backdropUrl, required this.voteAverage, required this.releaseDate, required this.overview, required this.isMovie});
  
  @override
  List<Object?> get props => [
        tmdbID,
        title,
        posterUrl,
        backdropUrl,
        voteAverage,
        releaseDate,
        overview,
        isMovie,
  ];
}