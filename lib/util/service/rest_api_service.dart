import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../config/config.dart';
import '../../data/model/movie_entity.dart';

part 'rest_api_service.g.dart';

@RestApi(baseUrl: Config.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('//movies-coming-soon.json')
  Future<List<MovieEntity>> fetchMovies();
}
