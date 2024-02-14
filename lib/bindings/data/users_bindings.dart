import 'package:get/get.dart';
import 'package:learning_getx/presentation/controllers/users_controllers.dart';

class UsersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UsersController());
  }
}