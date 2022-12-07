// ignore_for_file: unused_import, depend_on_referenced_packages

import 'package:app_mobxx/mobx_1_counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CounterView extends StatelessWidget {
  final Counter counter = Counter();

  CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobx Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(
              builder: (_) {
                return Text(counter.counter.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .headline3!
                        .copyWith(fontSize: 40));
              },
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counter.increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: counter.decrement,
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
