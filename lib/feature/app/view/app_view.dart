import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../movies/cubit/movie_cubit.dart';
import '../../movies/repository/movie_repository.dart';
import '../../movies/view/movie_list.dart';
import '../bloc/app_bloc.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: RepositoryProvider(
        create: (context) => MovieRepository(),
        child: BlocProvider(
          create: (context) => MovieCubit(context.read<MovieRepository>()),
          child: const MovieList(),
        ),
      ),
    );
  }
}
