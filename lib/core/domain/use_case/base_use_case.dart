import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:multiple_request_flutter/data/error/failure.dart';


class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object?> get props => [];
}


abstract class BaseUseCase<T, P> {
  Future<Either<Failure, T>> call(P p);
}