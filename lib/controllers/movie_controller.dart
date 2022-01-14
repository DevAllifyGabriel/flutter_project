import 'package:consumindo_api_filmes_project/models/movies_model.dart';
import 'package:consumindo_api_filmes_project/repositories/movies_repository.dart';
import 'package:flutter/cupertino.dart';

class MovieController {
  final MoviesRepository _moviesRepository;
  MovieController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
  }
}
