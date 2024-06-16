
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multiple_request_flutter/core/locator/service_locator.dart';
import 'package:multiple_request_flutter/core/presenter/components/custom_slider.dart';
import 'package:multiple_request_flutter/core/presenter/components/error_screen.dart';
import 'package:multiple_request_flutter/core/presenter/components/loading_indicator.dart';
import 'package:multiple_request_flutter/core/presenter/components/slider_card.dart';
import 'package:multiple_request_flutter/domain/entity/movie.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_vew_event_bloc.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_bloc.dart';
import 'package:multiple_request_flutter/presenter/bloc/my_view_state_bloc.dart';
import 'package:multiple_request_flutter/presenter/utils.dart/enums.dart';


class MainAppView extends StatelessWidget {
  const MainAppView({super.key});

  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (context)=> locator<MyViewBloc>()..add(GetMyViewEventBloc()),
      child: Scaffold(
        body: BlocBuilder<MyViewBloc, MyViewStateBloc>(
          builder: (context,state){
          switch (state.status) {
            case RequestStatus.loading:
                return const LoadingIndicator();
            case RequestStatus.loaded:
              return MoviesWidget(
                  nowPlayingMovies: state.movies[0],
                  popularMovies: state.movies[1],
                  topRatedMovies: state.movies[2],
              );
            case RequestStatus.error:
             return ErrorScreen(
              onTryAgainPressed: (){
                context.read<MyViewBloc>()..add(GetMyViewEventBloc());
              },
             );
             
          }
        }),
      ),
      );
  }
  
}


class MoviesWidget extends StatelessWidget {
  final List<Movie> nowPlayingMovies;
  final List<Movie> popularMovies;
  final List<Movie> topRatedMovies;

  const MoviesWidget({
    super.key,
    required this.nowPlayingMovies,
    required this.popularMovies, required this.topRatedMovies,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CASE TO SHOW 1 REQUEST MAKE
          CustomSlider(
            itemBuilder: (context, itemIndex, _) {
              return SliderCard(
                movie: nowPlayingMovies[itemIndex],
                itemIndex: itemIndex,
              );
            },
          ),
        ],
      ),
    );
  }
}

