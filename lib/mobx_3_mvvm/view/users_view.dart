// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../view_model/users_view_model.dart';

class UsersView extends StatelessWidget {
  final UserViewModel user = UserViewModel();
  UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Users List"),
        leading: Observer(builder: (_) {
          return Visibility(
              visible: user.isLoading,
              child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                      valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.white))));
        }),
      ),
      body: Observer(builder: (_) {
        switch (user.pageStatus) {
          case PageStatus.FIRST:
            return const Center(
                child: Text("Users Listesi için Butuna Tıklayınız"));
          case PageStatus.LOADING:
            return const Center(child: CircularProgressIndicator());
          case PageStatus.SUCCESS:
            return buildListView();
          case PageStatus.ERROR:
            return const Center(child: Text("Error"));
          default:
            return Container();
        }
      }),
      floatingActionButton: Observer(builder: (_) {
        return FloatingActionButton(
            onPressed: user.getAllUsers, child: const Icon(Icons.add));
      }),
    );
  }

  ListView buildListView() {
    return ListView.separated(
      separatorBuilder: (context, index) => Container(
          width: double.infinity, height: 1, color: Colors.pinkAccent),
      itemCount: user.users.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(user.users[index].username.toString()),
          subtitle: Text(user.users[index].email.toString()),
          trailing: Text(user.users[index].phone.toString()),
          leading: Text(user.users[index].id.toString()),
        );
      },
    );
  }
}
