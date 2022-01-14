import 'package:consumindo_api_filmes_project/controllers/movie_controller.dart';
import 'package:consumindo_api_filmes_project/models/movies_model.dart';
import 'package:consumindo_api_filmes_project/repositories/movies_repository_imp.dart';
import 'package:consumindo_api_filmes_project/services/dio_service_imp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller = MovieController(
    MoviesRepositoryImp(DioServiceImp()),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<Movies?>(
        valueListenable: _controller.movies,
        builder: (_, movies, __) {
          return movies != null
              ? ListView.builder(
                  itemCount: movies.listMovies.length,
                  itemBuilder: (_, idx) => Text(movies.listMovies[idx].title),
                )
              : Container();
        },
      ),
    );
  }
}
