// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api
import 'dart:math' as math show Random;

import 'package:mobx/mobx.dart';
part 'random.g.dart';

class RandomNumber = _RandomNumberBase with _$RandomNumber;

abstract class _RandomNumberBase with Store {
  @observable
  int sayi1 = math.Random().nextInt(10);

  @observable
  int sayi2 = math.Random().nextInt(10);

  /* @observable
  late int toplam; */

  @computed
  int get toplam => sayi1 + sayi2;

  @action
  void sayilar() {
    sayi1 = math.Random().nextInt(10);
    sayi2 = math.Random().nextInt(10);
    //toplam = sayi1 + sayi2;
  }
}
