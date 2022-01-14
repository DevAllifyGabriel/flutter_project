import 'package:consumindo_api_filmes_project/models/movies_model.dart';

abstract class MoviesRepository {
  Future<Movies> getMovies();
}
