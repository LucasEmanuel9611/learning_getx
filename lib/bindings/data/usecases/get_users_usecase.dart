import '../models/user_model.dart';
import '../repositories/github_repository.dart';

class GetUsersUsecase {
  final GithubRepository _repository = GithubRepository();

  Future<List<UserModel>> execute() {
    return _repository.getUsers();
  }
}