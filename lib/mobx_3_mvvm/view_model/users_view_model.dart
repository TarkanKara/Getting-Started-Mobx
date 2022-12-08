// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, unused_local_variable, library_private_types_in_public_api

import 'dart:io';

import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';

import '../model/users.dart';
part 'users_view_model.g.dart';

// ignore: constant_identifier_names
enum PageStatus { LOADING, ERROR, SUCCESS, FIRST }

class UserViewModel = _UserViewModelBase with _$UserViewModel;

abstract class _UserViewModelBase with Store {
  @observable
  PageStatus pageStatus = PageStatus.FIRST;

  final users_url = "https://jsonplaceholder.typicode.com/users";

  @observable
  List<Users> users = [];

  @observable
  bool isLoading = false;

  @action
  Future<void> getAllUsers() async {
    //isRequest();
    pageStatus = PageStatus.LOADING;

    final response = await Dio().get(users_url);

    if (response.statusCode == HttpStatus.ok) {
      //print(response.data);
      final responseData = response.data as List;
      users = responseData.map((e) => Users.fromJson(e)).toList();
      pageStatus = PageStatus.SUCCESS;
    } else {
      pageStatus = PageStatus.ERROR;
    }
  }

  @action
  void isRequest() {
    isLoading = !isLoading;
  }
}
