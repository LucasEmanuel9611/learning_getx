import '../data_sources/github_data_source.dart';
import '../models/user_model.dart';

class GithubRepository {
  final GithubDataSource _dataSource = GithubDataSource();

  Future<List<UserModel>> getUsers() async {
    final usersData = await _dataSource.getUsers();

    print('userData: $usersData');
    
    return usersData
        .map((userData) => UserModel(
              username: userData['login'],
              followers: userData['followers_url'],
              following: userData['following_url'],
            ))
        .toList();
  }
}