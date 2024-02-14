import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/users_controllers.dart';

class UsersScreen extends GetView<UsersController> {
  @override
  Widget build(BuildContext context) {
    print('Users list: ${controller.users}');

    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Users'),
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.users.length,
                itemBuilder: (context, index) {
                  final user = controller.users[index];

                  print(user);
                  return Container(
                    color: Colors.amber,
                    child: ListTile(
                      title: Text(user.username),
                      subtitle: Text(
                          'Followers: ${user.followers}, Following: ${user.following}'),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
