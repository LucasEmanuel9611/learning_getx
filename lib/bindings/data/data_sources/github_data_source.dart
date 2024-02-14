import 'package:dio/dio.dart';

class GithubDataSource {
  final Dio _dio = Dio();

  Future<List<Map<String, dynamic>>> getUsers() async {
    final response = await _dio.get('https://api.github.com/users');
    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(response.data);
    } else {
      throw Exception('Failed to fetch users');
    }
  }
}