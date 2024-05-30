import 'package:dio/dio.dart';
import 'package:multiple_request_flutter/data/datasource/datasource.dart';
import 'package:multiple_request_flutter/data/model/movie_model.dart';


const api_key="62f37b6a721b68095d76716650d201f1";
class DataSourceImp implements DataSource{
  @override
  Future<List<List<MovieModel>>> getMovies() {
    // TODO: implement getMovies
    throw UnimplementedError();
  }

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get("https://api.themoviedb.org/3/movie/top_rated?api_key=$api_key");
    if (response.statusCode == 200) {
      throw "ok";
    } else {
      throw "Server Error";
    }
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