import '../../util/service/rest_api_service.dart';
import '../../util/service/retrofit_service.dart';
import '../../util/service/service_locator.dart';
import '../model/movie_entity.dart';
import 'app_repository.dart';

final class AppRepositoryImpl implements AppRepository {
  final RestClient apiClient = locator<RetrofitService>().apiClient;

  @override
  Future<List<MovieEntity>> fetchMovies() async {
    return await apiClient.fetchMovies();
  }
}
