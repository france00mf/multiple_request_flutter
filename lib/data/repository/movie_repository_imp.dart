
import 'package:multiple_request_flutter/data/datasource/datasource.dart';
import 'package:multiple_request_flutter/domain/repository/movie_repository.dart';

class MovieRepositoryImp implements MovieRepository{
  final DataSource _baseMoviesRemoteDataSource;

  MovieRepositoryImp(this._baseMoviesRemoteDataSource);

  @override
  getMovies() {
    
    throw UnimplementedError();
  }

}