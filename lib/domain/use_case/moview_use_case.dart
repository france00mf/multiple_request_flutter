
import 'package:dartz/dartz.dart';
import 'package:multiple_request_flutter/core/domain/use_case/base_use_case.dart';
import 'package:multiple_request_flutter/data/error/failure.dart';
import 'package:multiple_request_flutter/domain/repository/movie_repository.dart';

class MovieUseCase implements BaseUseCase {
  final MovieRepository movieRepository; 
  MovieUseCase(this.movieRepository);

  @override
  Future<Either<Failure, dynamic>> call(p) async{
    return await movieRepository.getMovies();
  
  }
}