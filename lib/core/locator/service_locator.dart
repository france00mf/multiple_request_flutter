

import 'package:get_it/get_it.dart';
import 'package:multiple_request_flutter/data/datasource/datasource.dart';
import 'package:multiple_request_flutter/data/datasource/datasource_imp.dart';
import 'package:multiple_request_flutter/data/repository/movie_repository_imp.dart';
import 'package:multiple_request_flutter/domain/repository/movie_repository.dart';
import 'package:multiple_request_flutter/domain/use_case/movie_use_case.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_bloc.dart';

GetIt locator = GetIt.instance;

class ServiceLocator{
 static void int(){
    locator.registerLazySingleton<DataSource>(() => DataSourceImp()
    );

    locator.registerLazySingleton<MovieRepository>(()=>MovieRepositoryImp(locator()));

    locator.registerLazySingleton(() => MovieUseCase(locator()));

    locator.registerFactory(() => MyViewBloc(locator()));
  }
}
