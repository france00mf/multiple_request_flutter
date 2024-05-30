import '../model/movie_model.dart';

abstract class DataSource{
  Future<List<List<MovieModel>>> getMovies(); 
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
}