
import 'package:equatable/equatable.dart';

abstract class MyViewEventBloc extends Equatable{
  
  const MyViewEventBloc();
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GetMyViewEventBloc extends MyViewEventBloc{}