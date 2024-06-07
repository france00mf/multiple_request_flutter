import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_request_flutter/core/domain/use_case/base_use_case.dart';
import 'package:multiple_request_flutter/domain/use_case/movie_use_case.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_vew_event_bloc.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_state_bloc.dart';
import 'package:multiple_request_flutter/presenter/utils.dart/enums.dart';

class MyViewBloc extends Bloc<MyViewEventBloc, MyViewStateBloc>{
  final MovieUseCase _getMoviesUseCase;
  
  MyViewBloc(this._getMoviesUseCase):super(MyViewStateBloc()){
    on<MyViewEventBloc>(_getMovies);
  }

  Future<void> _getMovies(GetMyViewEventBloc eventBloc, Emitter<MyViewStateBloc> emit)async{
    emit(
      state.copyWith(
        status: RequestStatus.loading
      )
    );
    final result = await _getMoviesUseCase(const NoParameters());

    result.fold(
      (l) => emit(
        state.copyWith(
          status: RequestStatus.error,
          message: l.message
        )
      ),
      (r) => emit(
        state.copyWith(
          status: RequestStatus.loaded,
          movie: r
        )
      )
    );

  }
  
}