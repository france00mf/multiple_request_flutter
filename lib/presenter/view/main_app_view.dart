
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_request_flutter/core/locator/service_locator.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_vew_event_bloc.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_bloc.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_state_bloc.dart';


class MainAppView extends StatelessWidget {
  const MainAppView({super.key});

  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (context)=> locator<MyViewBloc>()..add(GetMyViewEventBloc()),
      child: Scaffold(
        body: BlocBuilder<MyViewBloc, MyViewStateBloc>(builder: (context,state){
          return throw "";
        }),
      ),
      );
  }
  
}

