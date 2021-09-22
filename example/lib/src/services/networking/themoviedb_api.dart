import 'package:example/src/app.dart';
import 'package:http/http.dart';
import 'package:result_type/result_type.dart';

import '../../models/index.dart';
import 'themoviedb_api_configs.dart';

final _client = Client();

class ThemoviedbApi {
  const ThemoviedbApi._();

  static Future<Result<DiscoverResponse?, NetworkError>> fetchDiscover() async {
    final response = await _client.get(
      Uri.parse('$baseUrl/discover/movie?api_key=$themoviedbApiKey&page=1'),
    );

    if (response.statusCode == 200) {
      // Panic app if some important parameters are missed e.g.,
      // some field in a Header or in a Body.
      panic.app();
      return Success(DiscoverResponse.fromJson(response.body));
    } else {
      throw NetworkError(response.statusCode);
    }
  }

  static Future<Result<MovieDetailsResponse?, NetworkError>>
      fetchMovieDetailsById(int id) async {
    final response = await _client.get(
      Uri.parse('$baseUrl/movie/$id?api_key=$themoviedbApiKey'),
    );
    if (response.statusCode == 200) {
      return Success(MovieDetailsResponse.fromJson(response.body));
    } else {
      throw NetworkError(response.statusCode);
    }
  }
}
