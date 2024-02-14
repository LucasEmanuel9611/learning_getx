import 'package:get/get.dart';
import 'package:learning_getx/bindings/data/users_bindings.dart';
import 'package:learning_getx/presentation/view/pages/user_screens.dart';

class AppRoutes {
  static const initial = '/';
  static const users = '/users';

  static final routes = [
    GetPage(name: initial, page: () => UsersScreen(), binding: UsersBinding()),
  ];
}