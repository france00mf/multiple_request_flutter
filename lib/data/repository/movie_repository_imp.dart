
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:multiple_request_flutter/data/datasource/datasource.dart';
import 'package:multiple_request_flutter/data/error/failure.dart';
import 'package:multiple_request_flutter/domain/entity/movie.dart';
import 'package:multiple_request_flutter/domain/repository/movie_repository.dart';

class MovieRepositoryImp implements MovieRepository{
  final DataSource _baseMoviesRemoteDataSource;

  MovieRepositoryImp(this._baseMoviesRemoteDataSource);

  @override
 Future<Either<Failure, List<List<Movie>>>>  getMovies() async{
    try{

      final result = await _baseMoviesRemoteDataSource.getMovies();
    return Right(result);

    }on DioError catch(failure) {
      
       throw Left(failure.message!);
       
       }
    
  }

}