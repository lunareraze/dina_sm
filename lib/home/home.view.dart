import 'package:dina_sm/home/home.ctrl.dart';
import 'package:dina_sm/home/home.data.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            OnReactive(
              () => Text(
                rxCount.state.toString(),
                textScaler: const TextScaler.linear(1.5),
              ),
            ),
            OnBuilder(
              listenTo: rxCount,
              builder: () => Text(
                rxCount.state.toString(),
                textScaler: const TextScaler.linear(1.5),
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                tambah();
              },
              child: const Text('Tambah'),
            )
          ],
        ),
      ),
    );
  }
}
