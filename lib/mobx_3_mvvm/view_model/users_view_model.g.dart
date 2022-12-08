// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserViewModel on _UserViewModelBase, Store {
  late final _$pageStatusAtom =
      Atom(name: '_UserViewModelBase.pageStatus', context: context);

  @override
  PageStatus get pageStatus {
    _$pageStatusAtom.reportRead();
    return super.pageStatus;
  }

  @override
  set pageStatus(PageStatus value) {
    _$pageStatusAtom.reportWrite(value, super.pageStatus, () {
      super.pageStatus = value;
    });
  }

  late final _$usersAtom =
      Atom(name: '_UserViewModelBase.users', context: context);

  @override
  List<Users> get users {
    _$usersAtom.reportRead();
    return super.users;
  }

  @override
  set users(List<Users> value) {
    _$usersAtom.reportWrite(value, super.users, () {
      super.users = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_UserViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getAllUsersAsyncAction =
      AsyncAction('_UserViewModelBase.getAllUsers', context: context);

  @override
  Future<void> getAllUsers() {
    return _$getAllUsersAsyncAction.run(() => super.getAllUsers());
  }

  late final _$_UserViewModelBaseActionController =
      ActionController(name: '_UserViewModelBase', context: context);

  @override
  void isRequest() {
    final _$actionInfo = _$_UserViewModelBaseActionController.startAction(
        name: '_UserViewModelBase.isRequest');
    try {
      return super.isRequest();
    } finally {
      _$_UserViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageStatus: ${pageStatus},
users: ${users},
isLoading: ${isLoading}
    ''';
  }
}
