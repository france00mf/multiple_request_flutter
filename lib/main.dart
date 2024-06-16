import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_request_flutter/core/locator/service_locator.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_bloc.dart';
import 'package:multiple_request_flutter/presenter/view/main_app_view.dart';

void main() {
  ServiceLocator.int();
  runApp(BlocProvider(
    create: (context) => locator<MyViewBloc>(),
    child: const MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: 
      false,
      home: MainAppView(),
    );
  }
}