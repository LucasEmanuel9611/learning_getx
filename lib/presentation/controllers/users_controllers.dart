import 'package:get/get.dart';
import 'package:learning_getx/bindings/data/usecases/get_users_usecase.dart';
import 'package:learning_getx/bindings/data/models/user_model.dart';

class UsersController extends GetxController {
  final GetUsersUsecase _getUsersUsecase = GetUsersUsecase();
  final users = <UserModel>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit(); 
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      isLoading.value = true;
      final fetchedUsers = await _getUsersUsecase.execute();
      users.value = fetchedUsers;
    } catch (e) {
      // Handle error
    } finally {
      isLoading.value = false;
    }
  }
}