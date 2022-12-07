// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RandomNumber on _RandomNumberBase, Store {
  Computed<int>? _$toplamComputed;

  @override
  int get toplam => (_$toplamComputed ??=
          Computed<int>(() => super.toplam, name: '_RandomNumberBase.toplam'))
      .value;

  late final _$sayi1Atom =
      Atom(name: '_RandomNumberBase.sayi1', context: context);

  @override
  int get sayi1 {
    _$sayi1Atom.reportRead();
    return super.sayi1;
  }

  @override
  set sayi1(int value) {
    _$sayi1Atom.reportWrite(value, super.sayi1, () {
      super.sayi1 = value;
    });
  }

  late final _$sayi2Atom =
      Atom(name: '_RandomNumberBase.sayi2', context: context);

  @override
  int get sayi2 {
    _$sayi2Atom.reportRead();
    return super.sayi2;
  }

  @override
  set sayi2(int value) {
    _$sayi2Atom.reportWrite(value, super.sayi2, () {
      super.sayi2 = value;
    });
  }

  late final _$_RandomNumberBaseActionController =
      ActionController(name: '_RandomNumberBase', context: context);

  @override
  void sayilar() {
    final _$actionInfo = _$_RandomNumberBaseActionController.startAction(
        name: '_RandomNumberBase.sayilar');
    try {
      return super.sayilar();
    } finally {
      _$_RandomNumberBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sayi1: ${sayi1},
sayi2: ${sayi2},
toplam: ${toplam}
    ''';
  }
}
