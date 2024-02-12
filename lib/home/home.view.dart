// import 'package:dina_sm/home/home.ctrl.dart';
// import 'package:dina_sm/home/home.data.dart';
// import 'package:flutter/material.dart';
// import 'package:states_rebuilder/states_rebuilder.dart';

// final _ct = HomeCtrl();

part of '_index.dart';

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
                _dt.rxCount.state.toString(),
                textScaler: const TextScaler.linear(1.5),
              ),
            ),
            OnBuilder(
              listenTo: _dt.rxCount,
              builder: () => Text(
                _dt.rxCount.state.toString(),
                textScaler: const TextScaler.linear(1.5),
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                _ct.tambah();
              },
              child: const Text('Tambah'),
            )
          ],
        ),
      ),
    );
  }
}
