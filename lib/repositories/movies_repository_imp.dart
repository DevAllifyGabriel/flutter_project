import 'package:consumindo_api_filmes_project/models/movies_model.dart';
import 'package:consumindo_api_filmes_project/repositories/movies_repository.dart';
import 'package:consumindo_api_filmes_project/services/dio_service.dart';
import 'package:consumindo_api_filmes_project/utils/apis.utils.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final DioService _dioService;
  MoviesRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    return Movies.fromJson(result.data);
  }
}
