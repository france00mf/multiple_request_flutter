import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_vew_event_bloc.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_state_bloc.dart';

class MyViewBloc extends Bloc<MyViewEventBloc, MyViewStateBloc>{
  MyViewBloc(super.initialState);
  
}