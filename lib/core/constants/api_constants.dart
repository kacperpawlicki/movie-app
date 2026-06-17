import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static String get bearerToken => dotenv.env['TMDB_BEARER_TOKEN'] ?? '';
}