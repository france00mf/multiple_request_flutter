import 'package:equatable/equatable.dart';
import 'package:multiple_request_flutter/domain/entity/movie.dart';
import 'package:multiple_request_flutter/presenter/utils.dart/enums.dart';

class MyViewStateBloc extends Equatable{
  final List<List<Movie>> movies;
  final RequestStatus status;
  final String message;

   MyViewStateBloc({
    this.movies = const [],
    this.status= RequestStatus.loading,
    this.message=''
   });

   MyViewStateBloc copyWith({
    List<List<Movie>>? movie,
    RequestStatus? status,
    String? message
   }){
      return MyViewStateBloc(
        movies: movies?? this.movies,
        status: status ?? this.status,
        message: message ?? this.message
      )
   }

  @override
  // TODO: implement props
  List<Object?> get props => [
        movies,
        status,
        message,
  ];

}