import 'package:dartz/dartz.dart';
import 'package:multiple_request_flutter/data/error/failure.dart';
import 'package:multiple_request_flutter/domain/entity/movie.dart';

abstract class MovieRepository{
   Future<Either<Failure, List<List<Movie>>>> getMovies();
}