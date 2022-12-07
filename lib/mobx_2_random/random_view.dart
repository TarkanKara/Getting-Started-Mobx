// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:app_mobxx/mobx_2_random/random.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class RandoView extends StatelessWidget {
  final RandomNumber random = RandomNumber();

  RandoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobx Random")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textt(context, random.sayi1.toString()),
                  textt(context, " + "),
                  textt(context, random.sayi2.toString()),
                ],
              );
            }),
            const SizedBox(height: 20),
            Observer(builder: (_) {
              return TextButton(
                  onPressed: random.sayilar,
                  child: textt(context, random.toplam.toString()));
            }),
          ],
        ),
      ),
    );
  }

  Widget textt(BuildContext context, String textt) {
    return Text(textt,
        style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 40));
  }
}
