import 'package:flutter/material.dart';
import 'package:states_rebuilder/scr/state_management/extensions/type_extensions.dart';
import 'package:states_rebuilder/scr/state_management/rm.dart';

class HomeView extends ReactiveStatelessWidget {
  HomeView({super.key});

  final count = 0.inj();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.state.toString(),
              textScaler: const TextScaler.linear(1.5),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                count.state = count.state + 3;
              },
              child: const Text('Tambah'),
            )
          ],
        ),
      ),
    );
  }
}
