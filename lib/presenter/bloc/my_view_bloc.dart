import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_request_flutter/core/domain/use_case/base_use_case.dart';
import 'package:multiple_request_flutter/domain/use_case/movie_use_case.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_vew_event_bloc.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_state_bloc.dart';

class MyViewBloc extends Bloc<MyViewEventBloc, MyViewStateBloc>{
  final MovieUseCase _getMoviesUseCase;
  
  MyViewBloc(this._getMoviesUseCase):super(MyViewStateBloc()){
    on<MyViewEventBloc>(_getMovies);
  }

  _getMovies(GetMyViewEventBloc eventBloc, Emitter<MyViewStateBloc> emit){
    emit(
      state.copyWith(
        status: RequestStatus.loading
      )
    );
    final result = await _getMoviesUseCase(const NoParameters());

  }
  
}