import 'package:multiple_request_flutter/domain/entity/movie.dart';

class MovieModel extends Movie{
    const MovieModel({
    required super.tmdbID,
    required super.title,
    required super.posterUrl,
    required super.backdropUrl,
    required super.voteAverage,
    required super.releaseDate,
    required super.overview,
    required super.isMovie,
  });

  
  
}