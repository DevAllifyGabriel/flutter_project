import 'package:consumindo_api_filmes_project/services/dio_service.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioServiceImp implements DioService {
  var token =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYWUyNGQ1MWIyMTczYmNjMDM0OTVmYThjYTQ2NzIxMCIsInN1YiI6IjYxZGY1MTAxMjcxNjcxMDA0MjBkYTMzOSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.je6X8gFY1E8FcJ6lpdnPfyInIKuzpnyh8g5-NiAw_ks';

  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/3/',
        headers: {
          'content-type': 'application/json;charset=utf-8',
          'authorization': 'Bearer $token'
        },
      ),
    )..interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
  }
}
