import 'package:multiple_request_flutter/data/datasource/datasource.dart';
import 'package:multiple_request_flutter/data/model/movie_model.dart';

class DataSourceImp implements DataSource{
  @override
  Future<List<List<MovieModel>>> getMovies() {
    // TODO: implement getMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MovieModel>> getNowPlayingMovies() {
    // TODO: implement getNowPlayingMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MovieModel>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() {
    // TODO: implement getTopRatedMovies
    throw UnimplementedError();
  }
  
}