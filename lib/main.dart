import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multiple_request_flutter/data/datasource/datasource_imp.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
 late DataSourceImp imp=DataSourceImp();
  @override
  void initState() {
    imp.getNowPlayingMovies();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: 
      false,
      home: Scaffold(body: Center(),),
    );
  }
}