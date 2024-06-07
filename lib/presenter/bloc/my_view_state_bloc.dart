import 'package:equatable/equatable.dart';
import 'package:multiple_request_flutter/domain/entity/movie.dart';

class MyViewStateBloc extends Equatable{
  final List<List<Movie>> movies;
  final RequestStatus status;
  final String message;

  const MyViewStateBloc({});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}